locals {
  bundle_id_suffix = var.region == "ap-south-1" ? "2_1" : (var.region == "ap-southeast-2" ? "2_2" : "2_0")
  command = templatefile("${path.module}/command.tpl", {
    keys_port = var.keys_port
    api_port  = var.api_port
  })
  result = regexall("\\{(.*)\\}(.*)", "\n${sshcommand_command.ssh.result}")

}

# Import SSH public key
resource "aws_lightsail_key_pair" "key_pair" {
  name       = var.pub_key_name
  public_key = var.pub_key
}

# Create Lightsail Instance
resource "aws_lightsail_instance" "instance" {
  depends_on = [
    aws_lightsail_key_pair.key_pair
  ]
  name              = var.name
  availability_zone = format("%s%s", var.region, var.zone)
  blueprint_id      = var.image
  bundle_id         = format("%s_%s", var.size, local.bundle_id_suffix)
  key_pair_name     = var.pub_key_name
}

# Create Static IP
resource "aws_lightsail_static_ip" "ip_create" {
  name = format("%s%s", var.name, "_static_ip")
}

# Assign/Attach Static IP to Instance
resource "aws_lightsail_static_ip_attachment" "ip_attach" {
  depends_on = [
    aws_lightsail_instance.instance
  ]
  static_ip_name = aws_lightsail_static_ip.ip_create.id
  instance_name  = aws_lightsail_instance.instance.id
}


# Set Public Ports for Instance
resource "aws_lightsail_instance_public_ports" "port_security" {
  instance_name = aws_lightsail_instance.instance.name
  port_info {
    protocol  = "tcp"
    from_port = "22"
    to_port   = "22"
  }
  port_info {
    protocol  = "tcp"
    from_port = var.api_port
    to_port   = var.api_port
  }
  port_info {
    protocol  = "tcp"
    from_port = var.keys_port
    to_port   = var.keys_port
  }
  port_info {
    protocol  = "udp"
    from_port = var.keys_port
    to_port   = var.keys_port
  }

}

# SSH into Instance and execute command
resource "sshcommand_command" "ssh" {
  depends_on = [
    aws_lightsail_instance_public_ports.port_security
  ]
  host        = aws_lightsail_static_ip.ip_create.ip_address
  user        = var.username
  command     = local.command
  private_key = var.private_key

}

# Get API key/url from ssh output
resource "local_file" "api_result" {
  depends_on = [
    sshcommand_command.ssh
  ]
  content  = format("{%s}", local.result[0][0])
  filename = "./api_key.txt"
}

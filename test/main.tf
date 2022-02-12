module "outline" {
  source       = "peterzam/outline/lightsail"
  version      = "1.0.0"
  name         = "outline_ls"
  pub_key_name = "outline_ls_pub_key"
  pub_key      = file("~/.ssh/id_rsa.pub")
  private_key  = file("~/.ssh/id_rsa")
}



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.55.0 |
| <a name="requirement_sshcommand"></a> [sshcommand](#requirement\_sshcommand) | 0.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.55.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.1.0 |
| <a name="provider_sshcommand"></a> [sshcommand](#provider\_sshcommand) | 0.2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lightsail_instance.instance](https://registry.terraform.io/providers/hashicorp/aws/3.55.0/docs/resources/lightsail_instance) | resource |
| [aws_lightsail_instance_public_ports.port_security](https://registry.terraform.io/providers/hashicorp/aws/3.55.0/docs/resources/lightsail_instance_public_ports) | resource |
| [aws_lightsail_key_pair.key_pair](https://registry.terraform.io/providers/hashicorp/aws/3.55.0/docs/resources/lightsail_key_pair) | resource |
| [aws_lightsail_static_ip.ip_create](https://registry.terraform.io/providers/hashicorp/aws/3.55.0/docs/resources/lightsail_static_ip) | resource |
| [aws_lightsail_static_ip_attachment.ip_attach](https://registry.terraform.io/providers/hashicorp/aws/3.55.0/docs/resources/lightsail_static_ip_attachment) | resource |
| [local_file.api_result](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [sshcommand_command.ssh](https://registry.terraform.io/providers/invidian/sshcommand/0.2.0/docs/resources/command) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_port"></a> [api\_port](#input\_api\_port) | Port no for Outline Management API | `string` | `"10000"` | no |
| <a name="input_image"></a> [image](#input\_image) | ubuntu\_20\_04, ubuntu\_18\_04, ubuntu\_16\_04\_2, debian\_10, debian\_9\_13, debian\_8\_7, centos\_8, centos\_7\_2009\_01 | `string` | `"ubuntu_20_04"` | no |
| <a name="input_keys_port"></a> [keys\_port](#input\_keys\_port) | Port no for Outline Access Keys | `string` | `"20000"` | no |
| <a name="input_name"></a> [name](#input\_name) | Instance Name | `string` | n/a | yes |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | SSH Private Key | `string` | n/a | yes |
| <a name="input_pub_key"></a> [pub\_key](#input\_pub\_key) | SSH Public Key | `string` | n/a | yes |
| <a name="input_pub_key_name"></a> [pub\_key\_name](#input\_pub\_key\_name) | Name for Public Key in AWS | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region | `string` | `"ap-southeast-1"` | no |
| <a name="input_size"></a> [size](#input\_size) | nano, micro, small, medium, large, xlarge, 2xlarge | `string` | `"micro"` | no |
| <a name="input_username"></a> [username](#input\_username) | SSH login Username | `string` | `"ubuntu"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | E.g. a, b, c | `string` | `"a"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

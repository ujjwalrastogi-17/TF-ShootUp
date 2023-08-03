provider "aws" {
  region = "ap-south-1"
  version = "5.10.0"
}

variable "AWS_REGION" { 
default = "ap-south-1" 
} 

# data "aws_vpc" "GetVPC" { 
#     filter { 
#         name = "tag:Name" 
#         values = ["dev"] 
#         } 
# } 

module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"
  key_name   = "TF_KEY"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "TF-key" {
    content  = tls_private_key.rsa.private_key_pem
    filename = "tfkey"
}


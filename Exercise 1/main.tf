terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_EC2_T2" {
  count = "4"
  ami = "ami-0b0dcb5067f052a63"
  subnet_id = "subnet-051e4913ba96f46ed"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}

# # TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "Udacity_EC2_M4" {
#   count = "2"
#   ami = "ami-0b0dcb5067f052a63"
#   subnet_id = "subnet-051e4913ba96f46ed"
#   instance_type = "m4.large"
#   tags = {
#    Name = "Udacity M4"
#  }
# }


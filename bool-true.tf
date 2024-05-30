#provider "aws" {
#   region     = "eu-central-1"
#}


resource "aws_instance" "ec2_example" {

   ami           = "ami-0b9a26d37416470d2"
   instance_type =  "t2.micro"
   count = 1
  associate_public_ip_address = var.enable_public_ip

   tags = {
           Name = "Terraform EC2"
   }

}

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}
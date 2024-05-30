provider "aws" {
   region     = "ap-northeast-1"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-0b9a26d37416470d2"
   instance_type =  "t2.micro"
   count = var.instance_count

   tags = {
           Name = "Terraform EC2"
   }
}

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}
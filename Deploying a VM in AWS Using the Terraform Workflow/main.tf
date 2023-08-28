provider "aws" {
    region = "us-east-1"
}
 resource "aws_instance" "Aman" {
    ami = "ami-053b0d53c279acc90"
    subnet_id = ""
   instance_type = "t3.micro"
   tags = {Name = "Deploying using Terraform"}
 }
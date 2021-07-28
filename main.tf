provider "aws" {
    access_key = var.ACCESS_KEY
    secret_key = var.SECRET_KEY
    region = var.AWS_REGION
  
}

resource "aws_instance" "terraformDev" {
    ami = var.AWS_AMI
    instance_type = "t2.micro"
    count =  2  
}

resource "aws_s3_bucket" "terraformDevBucket" {
    bucket = "firstbucket999"
}
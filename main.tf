terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # Match the region where your Jenkins EC2 is running
}

resource "aws_s3_bucket" "jenkins_assignment_bucket" {
  bucket = "venkatesh-jenkins-tf-assignment-23-10" # Must be globally unique

  tags = {
    Name        = "Jenkins-Terraform-Assignment"
    Environment = "Dev"
  }
}
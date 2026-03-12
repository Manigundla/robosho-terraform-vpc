terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.32.0"
    }
  }
  backend "s3" {
    bucket         = "mani-roboshop-dev-tfstate"
    key            = "vpc_test"
    region         = "us-east-1"
    dynamodb_table = "mani-roboshop-dev-tfstate"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


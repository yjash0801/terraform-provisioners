terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.55.0"
    }
  }
  backend "s3" {
    bucket = "mechanoidstore-remote-state"
    key    = "provisioners"
    region = "us-east-1"
    dynamodb_table = "mechanoidstore-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
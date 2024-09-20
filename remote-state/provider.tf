terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
  backend "s3" {
    bucket = "awsd81s-buket"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "aws81s-Locking"
  }

}

provider "aws" {
  region = "us-east-1"
}
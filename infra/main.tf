provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      Application = "my-app"
      Owner       = "aaa"
    }
  }
}

terraform {
  required_version = ">= 1.2.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.29.0"
    }
  }
  # terraformコマンド実行時に指定するため、ここでは未指定
  backend "s3" {
  }
}

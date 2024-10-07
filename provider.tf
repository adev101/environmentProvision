terraform{
  required_providers{
  aws = {
    source = "hashicorp/aws"
    version = "~> 5.70.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  }

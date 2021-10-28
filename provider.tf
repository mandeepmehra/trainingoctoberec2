provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "mandeeptrainingoctobertfstate"
    key = "tfstate"
    region = "ap-south-1"
  }
}
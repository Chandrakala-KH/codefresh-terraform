provider "aws" {
  region = "us-east-2"
  access_key = "AKIAJQAYZJN6BPVB6PDA"
  secret_key = "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"
}

resource "aws_instance" "webinstance" {
   ami           = "ami-03d64741867e7bb94"
   instance_type = "t2.micro"
   tags = {
   Name = "webserver"
   }
   }

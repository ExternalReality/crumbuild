provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region  = "${var.region}"
}

resource "aws_instance" "Demo" {
  ami           = "ami-096fda3c22c1c990a"
  instance_type = "t2.micro"
  tags = {
    Name = "Demo"
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  count = 1
  ami           = "ami-06067086cf86c58e6"
  instance_type = "t2.micro"
 
  tags = {
    Name = "tf-example-1"
  }
}

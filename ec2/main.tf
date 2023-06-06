resource "aws_instance" "my-vm" {
  ami           = "ami-0c544bda9765444c2"
  instance_type = "t2.medium"
  availability_zone = "us-east-1"
  }

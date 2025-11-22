provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0fa91bc90632c73c9" 
  instance_type = "t3.micro"
  availability_zone = "eu-north-1a"
  key_name      = "devops-project-swabhav"

  associate_public_ip_address = true

  tags = {
    Name = "firststsproject"
  }
}

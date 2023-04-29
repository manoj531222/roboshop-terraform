resource "aws_instance" "frontend" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

output "frontend" {
  value = aws_instance.frontend.public_ip
}

resource "aws_instance" "MongoDB" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "MongoDB"
  }
}

resource "aws_instance" "Catalogue" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "Catalogue"
  }
}

resource "aws_instance" "Redis" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "Redis"
  }
}




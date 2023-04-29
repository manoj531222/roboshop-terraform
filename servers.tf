data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}

resource "aws_instance" "frontend" {
  ami           = "data.aws_ami.centos.image_id"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

output "frontend" {
  value = aws_instance.frontend.public_ip
}

resource "aws_instance" "MongoDB" {
  ami           = "data.aws_ami.centos.image_id"
  instance_type = "t3.micro"

  tags = {
    Name = "MongoDB"
  }
}

resource "aws_instance" "Catalogue" {
  ami           = "data.aws_ami.centos.image_id"
  instance_type = "t3.micro"

  tags = {
    Name = "Catalogue"
  }
}

resource "aws_instance" "Redis" {
  ami           = "data.aws_ami.centos.image_id"
  instance_type = "t3.micro"

  tags = {
    Name = "Redis"
  }
}




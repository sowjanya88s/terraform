resource "aws_instance" "my_instance" {
    for_each = var.instances
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  tags = {
    Name = each.key
    Env = "dev"
  }
}

resource "aws_security_group" "my_sg" {
  name        = "terraform-vpc"
  description = "Allow TLS inbound traffic and all outbound traffic"

    dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port = ingress.value.port
      to_port = ingress.value.port
      description = ingress.value.description
       protocol         = "tcp"
     cidr_blocks      = ["0.0.0.0/0"]
     
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
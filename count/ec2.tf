resource "aws_instance" "my_instance" {
    count = 10
  ami           = var.ami_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  tags = {
      Name = var.instances[count.index]
      Env = "dev"
      Terraform = "true"
  }
}

resource "aws_security_group" "my_sg" {
  name        = var.sg_name
  description = var.sg_description

  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.sg_protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.sg_protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = var.sg_tags
}
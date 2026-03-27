resource "aws_instance" "my_instance" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  tags = {
    Name = "provisioners"
    Env = "dev"
  }
 provisioner "local-exec" {
  interpreter = ["bash", "-c"]
  command     = "echo ${self.public_ip} > inventory.ini"
}

provisioner "local-exec" {
  interpreter = ["bash", "-c"]
  command = "exit 1"
  on_failure = continue
}
connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     =  self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "dnf install nginx -y",
      "systemctl start nginx"
    ]
  }

}


resource "aws_security_group" "my_sg" {
  name        = "terraform-vpc"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
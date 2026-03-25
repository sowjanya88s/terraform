resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  tags = {
    Name = "terraform"
    Env = "dev"
  }
}

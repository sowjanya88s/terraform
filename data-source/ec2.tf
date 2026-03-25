resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  
  tags = {
    Name = "terraform"
    Env = "dev"
  }
}

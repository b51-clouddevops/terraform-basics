resource "aws_instance" "web" {
  ami           = ami-0fa1ba08307b907ac
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
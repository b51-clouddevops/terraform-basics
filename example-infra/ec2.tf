resource "aws_instance" "web" {
  ami           = "ami-0fa1ba08307b907ac"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "private_ip" {
    value   =   aws_instance.web.private_dns
}
# Creates EC2 Instance 
resource "aws_instance" "app" {
  ami           = "ami-0fa1ba08307b907ac"
  instance_type = "t3.micro"

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

# Shows output on the screen
output "private_dns" {
    value   =   aws_instance.app.private_dns
}

# Creates Security Group
resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [0.0.0.0/0]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
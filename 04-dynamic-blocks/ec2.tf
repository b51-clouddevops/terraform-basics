# Creates EC2 Instance 
resource "aws_instance" "app" {
  ami                        = "ami-0fa1ba08307b907ac"
  instance_type              = "t3.micro"
  vpc_security_group_ids     = [aws_security_group.allows_ssh.id]

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}


# Declaring a local with map variable 
locals {
    ingress_inbound_rules = [
        {
            description = "SSH from Public"
            port        = 22
        {
            description = "HTTPS from Public"
            port        = 443
        },
        {
            description = "HTTP from Public"
            port        = 80
        }
    ]
}

# Creates Security Group
resource "aws_security_group" "allows_ssh" {
  name        = "allows_ssh"
  description = "Allows SSH inbound traffic"

  dynamic "ingress" {
    for_each         = local.ingress_inbound_rules 

        description      = ingress.value.description
        from_port        = ingress.value.port
        to_port          = ingress.value.port
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allows_HTTP_HTTPS_SSH from internet"
  }
}


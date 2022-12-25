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
            from_port        = 22
            to_port          = 22
        },
        {
            description = "HTTPS from Public"
            from_port        = 443
            to_port          = 443
        },
        {
            description = "HTTP from Public"
            from_port        = 80
            to_port          = 80
        }
    ]
}

# Creates Security Group
resource "aws_security_group" "allows_ssh" {
  name        = "allows_ssh"
  description = "Allows SSH inbound traffic"

  dynamic "ingress" {
    for_each         = ingress_inbound_rules 

        description      = ingress_inbound_rules.description
        from_port        = ingress_inbound_rules.from_port
        to_port          = ingress_inbound_rules.to_port
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


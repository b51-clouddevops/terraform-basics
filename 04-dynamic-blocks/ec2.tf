# Creates EC2 Instance 
resource "aws_instance" "app" {
  ami                        = "ami-0fa1ba08307b907ac"
  instance_type              = "t3.micro"
  vpc_security_group_ids     = [aws_security_group.allow_ssh_http_https.id]

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

# Shows output on the screen
output "private_dns" {
    value   =   aws_instance.app.private_dns
}

locals {
    ingress_inbound_rules = [
        {
            description      = "HTTP from Public"
            from_port        =  80
            to_port          =  80
        },
        {
            description      = "SSH from Public"
            from_port        =  22
            to_port          =  22
        },
        {
            description      = "HTTPS from Public"
            from_port        =  443
            to_port          =  4
        },
    ]
}

# Creates Security Group
resource "aws_security_group" "allow_ssh_http_https" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  dynamic "ingress" {
    content {
        for_each            = local.ingress_inbound_rules
        ingress {
            description      = ingress.value.description
            from_port        = ingress.value.from_port
            to_port          = ingress.value.to_port
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
            }      
        }
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_SSH"
  }
}
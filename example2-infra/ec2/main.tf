# Creates EC2 Instance 
resource "aws_instance" "app" {
  ami                        = "ami-0fa1ba08307b907ac"
  instance_type              = "t3.micro"
  vpc_security_group_ids     = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}
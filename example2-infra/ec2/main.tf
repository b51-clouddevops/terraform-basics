# Creates EC2 Instance 
resource "aws_instance" "app" {
  ami                        = data.aws_ami.myami.image_id
  instance_type              = "t3.micro"
  vpc_security_group_ids     = [var.sg]


  provisioner "local-exec" {
    command = <<EOF 


EOF 
  }

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}


variable "sg" {}

output "public_ip" {
    value = aws_instance.app.public_ip
}
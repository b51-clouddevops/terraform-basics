# Creates EC2 Instance 
resource "aws_instance" "app" {
  ami                        = data.aws_ami.myami.image_id
  instance_type              = "t3.micro"
  vpc_security_group_ids     = [var.sg]

  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.private_ip
  }

  provisioner "remote-exec" {
    inline = [
      "ansible-pull -U "

    ]
  }

}


variable "sg" {}

output "public_ip" {
    value = aws_instance.app.public_ip
}
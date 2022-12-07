# Request a spot instance at $0.03
resource "aws_spot_instance_request" "cheap_worker" {
  ami                          = "data.aws_ami.myami.image_id"
  instance_type                = "t3.micro"
  wait_for_fulfillment         = true
 vpc_security_group_ids     = [aws_security_group.allows_ssh]

  tags = {
    Name = var.COMPONENT
  }

  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.private_ip
  }

  provisioner "remote-exec" {
    inline = [
      "ansible-pull -U https://github.com/b51-clouddevops/ansible.git -e ansible_user=centos -e ansible_password=DevOps321 -e COMPONENT=${var.COMPONENT} -e APP_VERSION=${var.APP_VERSION} -e ENV=dev roboshop-pull.yml"
    ]
  }

}


# # Creates EC2 Instance 
# resource "aws_instance" "app" {
#   ami                        = data.aws_ami.myami.image_id
#   instance_type              = "t3.micro"
#   vpc_security_group_ids     = [var.sg]

#   connection {
#     type     = "ssh"
#     user     = "centos"
#     password = "DevOps321"
#     host     = self.private_ip
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "ansible-pull -U https://github.com/b51-clouddevops/ansible.git -e ansible_user=centos -e ansible_password=DevOps321 -e COMPONENT=mongodb -e APP_VERSION=0.0.2 -e ENV=dev roboshop-pull.yml"
#     ]
#   }

# }


# variable "sg" {}

# output "public_ip" {
#     value = aws_instance.app.public_ip
# }
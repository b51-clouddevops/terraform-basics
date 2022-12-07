data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "b51-ansible-base"
  owners           = ["self"]
}
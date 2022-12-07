module "ec2" {
    source = "./ec2"
}

module "sg" {
    source = "./sg"
}

# Taking the output to this root module from the sg sub-module 
output  
module "frontend" {
    source      =   "./ec2"
    COMPONENT   =   "frontend"
}

module "mongodb" {
    source      =   "./ec2"
    COMPONENT   =   "frontend"
}


module "mongodb" {
    source      =   "./ec2"
    COMPONENT   =   "mongodb"
    APP_VERSION =   "0.0.2"
}

module "cart" {
    source      =   "./ec2"
    COMPONENT   =   "cart"
    APP_VERSION =   "0.0.2"
}

module "frontend" {
    source      =   "./ec2"
    COMPONENT   =   "frontend"
    APP_VERSION =   "0.0.2"
}


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

module "catalogue" {
    source      =   "./ec2"
    COMPONENT   =   "catalogue"
    APP_VERSION =   "0.0.2"
}

module "shipping" {
    source      =   "./ec2"
    COMPONENT   =   "shipping"
    APP_VERSION =   "0.0.2"
}

module "user" {
    source      =   "./ec2"
    COMPONENT   =   "user"
    APP_VERSION =   "0.0.2"
}

module "catalogue" {
    source      =   "./ec2"
    COMPONENT   =   "catalogue"
    APP_VERSION =   "0.0.2"
}

module "shipping" {
    source      =   "./ec2"
    COMPONENT   =   "shipping"
    APP_VERSION =   "0.0.2"
}

module "user" {
    source      =   "./ec2"
    COMPONENT   =   "user"
    APP_VERSION =   "0.0.2"
}
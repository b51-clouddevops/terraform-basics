module "frontend" {
    source      =   "./ec2"
    COMPONENT   =   "frontend"
    APP_VERSION =   "0.0.2"
}

# module "mongodb" {
#     source      =   "./ec2"
#     COMPONENT   =   "mongodb"
# }
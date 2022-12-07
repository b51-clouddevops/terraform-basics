variable "COMPONENT" {}
variable "APP_VERSION" {}

variable "ALL_COMPONENTS" {
    default = {
        mongo   =  {
            app_version  =  ""
        }
    }
}
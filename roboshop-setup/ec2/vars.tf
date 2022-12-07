variable "COMPONENT" {}
variable "APP_VERSION" {}

variable "ALL_COMPONENTS" {
    default = {
        mongo   =  {
            app_version  =  "null"
        },

        catalogue   =  {
            app_version  =  "0.0.2"
        },

        redis   =  {
            app_version  =  "0.0.2"
        },


    }
}
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
            app_version  =  "null"
        },

        cart   =  {
            app_version  =  "0.0.2"
        },

        user   =  {
            app_version  =  "0.0.2"
        },

        mysql   =  {
            app_version  =  "null"
        },

        shipping   =  {
            app_version  =  "0.0.1"
        },

        rabbitmq   =  {
            app_version  =  "0.0.1"
        },

    }
}
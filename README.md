# terraform-basics

This repository contains all the basics needed to kick start on terraform.

Default variable file name that terraform looks for is `terraform.tfvars`

If you supply any file apart from terraform.tfvars , you need to specify the name of the file with `-var-file=filename.tfvars`


### Arguments and Attributes in terraform

Arguments are the build blocks of the resources that you wish to create, which are like the properties to be used to create instance.
    
    EX: ``` AMI to use , Security Group To Use, Network To Use``` 

Attributes are the properties which can only be see once the resource is provisioned.

    Ex: ``` Instance ID, Private IP, Public IP```

Depends on the type of changes, terraform change can be either
    --> Concurrent
    --> Disruptive
    --> Destroy and recreate

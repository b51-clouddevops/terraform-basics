variable "sample" {
  default  = "Hello World"   # Declaring the variable
}

output "sample" {
    value = var.sample       # Printing the variable
}


output "sample1" {
    value = "The value that I am Printing is ${var.sample}"
}

variable "number" {
    default = 100 
}

output "number" {
    value = var.number       # Printing the variable
}


# List Variable 

variable "ex-list" {
  default = [
    "Cloud",
    "DevOps",
    100,
    false,
    "Verma",
    "SRE"
  ]
}

output "ex-list-output" {
    value = "Welcome to ${var.ex-list[0]} ${var.ex-list[1]} Training and the total course duration is ${var.ex-list[2]} and the trainer name is ${var.ex-list[4]}"
}

# Map Variable 

variable "ex-map" {
    default = {
        Duration = 105 
        Timing   = "0730AMIST"
        BATCH    = 51 
        
    }
  
}


# A variable can be accessed without ${} only the variable is called. In case, if it's needed to be added with other strings or in between something, then we need to enclose them in
# in the double quotes. Single quotes are not valid in terraform. 


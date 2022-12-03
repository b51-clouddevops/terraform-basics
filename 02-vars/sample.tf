variable "sample" {
  default  = "Hello World"   # Declaring the variable
}

output "sample" {
    value = var.sample       # Printing the variable
}


output "sample1" {
    value = "The value that I am Printing is {var.sample}"
}


# A variable can be accessed without ${} only the variable is called. In case, if it's needed to be added with other strings or in between something, then we need to enclose them in

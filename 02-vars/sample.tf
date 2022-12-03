variable "sample" {
  default  = "Hello World"   # Declaring the variable
}

output "sample" {
    value = var.sample       # Printing the variable
}


output "sample1" {
    value = "The value that I am Printing is "{var.sample}"
}


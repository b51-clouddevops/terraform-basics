variable "sample" {
  default  = "Hello World"   # Declaring the variable
}

output "sample" {
    value = var.sample       # Printing the variable
}

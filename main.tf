variable "message" {
  description = "The message to print"
  type        = string
}

output "hello_output" {
  value = var.message
}

variable "env" {
  description = "The env"
  type        = string
  default = "default"
}

output "hello_output" {
  value = var.env
}

variable "path" {
  description = "The path"
  type        = string
  default = "default"
}

output "path_output" {
  value = var.path
}

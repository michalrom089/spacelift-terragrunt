variable "env" {
  description = "The env"
  type        = string
  default = "default"
}

output "env_output" {
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

variable "repo_root" {
  description = "repo_root"
  type        = string
  default = "default"
}

output "repo_root_output" {
  value = var.repo_root
}


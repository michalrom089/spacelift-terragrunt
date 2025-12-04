terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

resource "terraform_data" "trigger" {
  input = timestamp()
}

# Random ID that changes on every apply due to trigger
resource "random_id" "output" {
  byte_length = 7

  keepers = {
    # Using the id of terraform_data which changes on every apply
    trigger = terraform_data.trigger.id
  }
}

# Output the random ID
output "random_id" {
  value       = random_id.output.hex
  description = "Random ID that changes on every apply"
}

output "random_id_b64" {
  value       = random_id.output.b64_url
  description = "Random ID in base64 URL-safe encoding"
}

output "timestamp" {
  value       = terraform_data.trigger.output
  description = "Timestamp when this configuration was applied"
}

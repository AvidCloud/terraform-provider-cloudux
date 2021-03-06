terraform {
  required_providers {  
    cloudux = {
      source  = "AvidCloud/cloudux"
      version = ">= 0.0.9"
    }
  }
}

provider "cloudux" {
  # Configuration options
}

resource "cloudux_site_key" "example" {
    // Optional:
    // rsa_bits = 4096
}

output "public_key" {
  value = cloudux_site_key.example.public_key
}

output "private_key" {
  value = cloudux_site_key.example.private_key
  sensitive = true
}
---
page_title: "Site Key"
description: |-
  Generates a site key pair
---

# site_key Resource/Data Source

Creates a site key

## Example Usage

```hcl
terraform {
  required_providers {  
    cloudux = {
      source  = "AvidCloud/cloudux"
      version = ">= 0.0.8"
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
}
```


## Attribute Reference

* `private_key` - The private key 
* `public_key` - The public key 

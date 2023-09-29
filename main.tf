# Global settings block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.4"
    }
  }
}

# Provider block
provider "aws" {
    # configuration options
    region = "us-east-1"

} 

module "db" {
    source = "./db"
}

module "web" {
    source = "./web"
}


output "PrivateIP"{
    value = module.db.PrivateIP
}

output "PublicIP"{
    value = module.web.PublicIP
}
terraform {
  required_providers {
    cloudsmith = {
      source  = "cloudsmith-io/cloudsmith"
      version = ">= 0.7.0"
    }
  }
}

provider "cloudsmith" {
  api_key = var.api_key
}

resource "cloudsmith_repository_privileges" "give_read_access" {
  organization = var.org
  repository   = var.repo

  service {
    privilege = "read"
    slug      = var.service_slug
  }
}

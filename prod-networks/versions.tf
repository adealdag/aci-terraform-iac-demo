terraform {
  required_providers {
    aci = {
      source  = "ciscodevnet/aci"
      version = "~> 2.0.0"
    }
  }
  required_version = ">= 0.13"
}

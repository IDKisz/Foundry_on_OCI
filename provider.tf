terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 4.98.0"
    }
  }
}

provider "oci" {
  user_ocid        = var.user_ocid
  tenancy_ocid     = var.tenancy_ocid
  private_key_path = var.key_path
  fingerprint      = var.fingerprint
  region           = var.region
}
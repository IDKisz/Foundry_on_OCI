resource "oci_identity_compartment" "foundry_compartment" {
  compartment_id = var.tenancy_ocid
  description    = "Hosting for foundry VTT"
  name           = "foundry_compartment"
}


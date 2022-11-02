resource "oci_core_subnet" "vcn-public-subnet" {
  compartment_id = var.tenancy_ocid
  vcn_id         = oci_core_vcn.foundry_vcn.id
  cidr_block     = "10.0.0.0/24"
}
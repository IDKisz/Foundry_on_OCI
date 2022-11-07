resource "oci_core_subnet" "vcn-private-subnet" {
  compartment_id = var.tenancy_ocid
  vcn_id         = oci_core_vcn.foundry_vcn.id
  cidr_block     = "10.0.1.0/24"
  security_list_ids = [oci_core_security_list.foundry_security_list.id]
}
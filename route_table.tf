resource "oci_core_route_table" "foundry_route_table" {
  compartment_id = var.tenancy_ocid
  vcn_id         = oci_core_vcn.foundry_vcn.id
  display_name   = "foundry_route_table"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.foundry_internet_gateway.id
  }
}
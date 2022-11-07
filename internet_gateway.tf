resource "oci_core_internet_gateway" "foundry_internet_gateway" {
    compartment_id = var.tenancy_ocid
    vcn_id = oci_core_vcn.foundry_vcn.id
}
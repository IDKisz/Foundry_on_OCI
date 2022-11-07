resource "oci_core_instance" "free_instance_foundry" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.tenancy_ocid
  display_name        = "Foundry_VTT"
  shape               = "VM.Standard.A1.Flex"

  shape_config {
    ocpus         = var.instance_ocpus
    memory_in_gbs = var.instance_shape_config_memory_in_gbs
  }

  create_vnic_details {
    subnet_id        = oci_core_subnet.vcn-public-subnet.id
    display_name     = "foundry"
    assign_public_ip = true
    assign_private_dns_record = false
    # hostname_label   = "foundryhost"
  }

  source_details {
    source_type             = "image"
    source_id               = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaoulgsbl2wj2uth7prnsx2dpgdzx4gkergpo77yszyfwqhyyt2qgq"
    boot_volume_size_in_gbs = 60
  }

  metadata = {
    ssh_authorized_keys = var.ssh_instance_key
  }
}
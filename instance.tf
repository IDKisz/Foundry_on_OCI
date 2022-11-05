resource "oci_core_instance" "free_instance0" {
  availability_domain = var.tenancy_ocid
  compartment_id      = var.tenancy_ocid
  display_name        = "Foundry_VTT"
  shape               = var.instance_shape

  shape_config {
    ocpus = var.instance_ocpus
    memory_in_gbs = var.instance_shape_config_memory_in_gbs
  }

  create_vnic_details {
    subnet_id        = oci_core_subnet.vcn-public-subnet.id
    display_name     = "foundry"
    assign_public_ip = true
    hostname_label   = "foundry_host"
  }

  source_details {
    source_type = "image"
    source_id   = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa7wq4opozz63gwzrolqmalwadtckpke5ehhxh634myjquvwlzetyq"
    boot_volume_size_in_gbs = 60
  }

  metadata = {
    # ssh_authorized_keys = (var.ssh_public_key != "") ? var.ssh_public_key : tls_private_key.compute_ssh_key.public_key_openssh
    ssh_authorized_keys = var.key_path
    # "metadata" : { "quake_bot_level" : "Severe", "ssh_authorized_keys" : "ssh-rsa == rsa-key-20160227", "user_data" : "==" }
  }
}
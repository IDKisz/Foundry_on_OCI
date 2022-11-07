resource "oci_core_security_list" "foundry_security_list" {
  compartment_id = var.tenancy_ocid
  vcn_id         = oci_core_vcn.foundry_vcn.id

  egress_security_rules {
    destination      = "0.0.0.0/0"
    protocol         = "6"
  }

  ingress_security_rules {
    description = "HTTP"
    protocol    = "6"
    source      = "0.0.0.0/0"
    stateless = true
    tcp_options {
      max = "80"
      min = "80"
    }
  }
  ingress_security_rules {
    description = "HTTPS"
    protocol    = "6"
    source      = "0.0.0.0/0"
    stateless = true
    tcp_options {
      max = "443"
      min = "443"
    }
  }
  ingress_security_rules {
    description = "SSH"
    protocol    = "6"
    source      = "0.0.0.0/0"     # var.ssh_endpoint
    stateless = true
    tcp_options {
      max = "22"
      min = "22"
    }
  }
}
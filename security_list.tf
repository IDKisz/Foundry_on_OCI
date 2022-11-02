resource "oci_core_security_list" "foundry_security_list" {
    compartment_id ="${var.tenancy_ocid}"
    vcn_id = oci_core_vcn.foundry_vcn.id

    egress_security_rules {
        description = "HTTP"
        destination = "10.0.0.0/24"
        protocol = "6"
        destination_type = "0.0.0.0/0"
        icmp_options {
            type = null
            code = null
        }
        stateless = true
        tcp_options {
            destination_port_range {
            max = 80
            min = 80
            }
            source_port_range {
                max = 80
                min = 80
            }
        }
    }
    egress_security_rules {
        description = "HTTPS"
        destination = "10.0.0.0/24"
        protocol = "6"
        destination_type = "0.0.0.0/0"
        icmp_options {
            type = null
            code = null
        }
        stateless = true
        tcp_options {
            destination_port_range {
            max = 443
            min = 443
            }
            source_port_range {
                max = 443
                min = 443
            }
        }
    }
    egress_security_rules {
        description = "SSH"
        destination = "10.0.0.0/24"
        protocol = "6"
        destination_type = "0.0.0.0/0"
        icmp_options {
            type = null
            code = null
        }
        stateless = true
        tcp_options {
            destination_port_range {
            max = 22
            min = 22
            }
            source_port_range {
                max = 22
                min = 22
            }
        }
    }
    ingress_security_rules {
        description = "HTTP"
        protocol = "6"
        source = "0.0.0.0/0"
        icmp_options {
            type = null
            code = null
        }
        stateless = true
        tcp_options {
            max = 80
            min = 80
            source_port_range {
                max = 80
                min = 80
            }
        }
    }
    ingress_security_rules {
        description = "HTTPS"
        protocol = "6"
        source = "0.0.0.0/0"
        icmp_options {
            type = null
            code = null
        }
        stateless = true
        tcp_options {
            max = 443
            min = 443
            source_port_range {
                max = 443
                min = 443
            }
        }
    }
    ingress_security_rules {
        description = "SSH"
        protocol = "6"
        source = var.ssh_endpoint
        icmp_options {
            type = null
            code = null
        }
        stateless = true
        tcp_options {
            max = 22
            min = 22
            source_port_range {
                max = 22
                min = 22
            }
        }
    }
}
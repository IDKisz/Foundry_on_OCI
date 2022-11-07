variable "region" {
  type    = string
  default = "eu-frankfurt-1"
}

variable "fingerprint" {
  type    = string
  default = ""
}

variable "key_path" {
  type    = string
  default = ""
}

variable "ssh_instance_key" {
  type = string
  default = ""

}

variable "user_ocid" {
  type    = string
  default = "ocid1.user.oc1..."
}

variable "tenancy_ocid" {
  type    = string
  default = "ocid1.tenancy.oc1..."
}

variable "ssh_endpoint" {
  type    = string
  default = ""
}

variable "instance_ocpus" {
  type = number
  default = 1
}

variable "instance_shape_config_memory_in_gbs" {
  type = number
  default = 6
}
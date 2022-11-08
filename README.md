# **Infrastructure on Oracle (OCI) for Foundry VTT**

This Terraform code is build ready to use infrastructure for Foundry VTT using OCI on Always Free version. Code was created based on instruction which you can find at https://foundryvtt.wiki/en/setup/hosting/always-free-oracle. Code doesn't include installation of Foundry VTT application on VM and further configuration.

## **Important information**

- Before use terraform code set apropiate variables in variables.tf, which specify your access to Oracle account.
- If you experience some problem with build VM, you can try other type free machine: VM.Standard.E2.1.Micro (change variable "instance_shape_config_memory_in_gbs" to 1). Remember to set correct image (without "...aarch64...)
- Images ID you can find at https://docs.oracle.com/en-us/iaas/images/ubuntu-2204/

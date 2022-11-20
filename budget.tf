resource "oci_budget_budget" "foundry_budget" {
    amount = "1"
    compartment_id = var.tenancy_ocid
    reset_period = "MONTHLY"
    target_type = "COMPARTMENT"
    targets = [var.tenancy_ocid]
}
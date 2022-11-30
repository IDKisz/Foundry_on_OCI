resource "oci_budget_alert_rule" "foundry_alert_rule" {
    budget_id = oci_budget_budget.foundry_budget.id
    threshold = 1
    threshold_type = "PERCENTAGE"
    type = "FORECAST"
    message = "Foundry on OCI will soon be over budget."
    recipients = var.alert_rule_recipients
}
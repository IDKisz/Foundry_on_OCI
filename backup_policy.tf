resource "oci_core_volume_backup_policy" "foundry_volume_backup_policy" {
    compartment_id = var.tenancy_ocid
    display_name = "foundry_volume_backup_policy"

    schedules {
        backup_type = "INCREMENTAL"
        period = "ONE_WEEK"
        retention_seconds = 2419200

        day_of_week = "MONDAY"
        hour_of_day = "3"
    }
}


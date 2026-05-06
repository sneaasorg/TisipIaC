locals {
    prefix = "${var.company}-${var.environment}-${var.project}"

    common_tags = {
        Environment = var.environment
        Project     = var.project
        Owner       = var.company
        ManagedBy   = "Terraform"
    }
}
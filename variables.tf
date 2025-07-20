variable "snowflake_account_name" {
  type        = string
  description = "Snowflake account name (e.g., DW)"
}

variable "snowflake_organization_name" {
  type        = string
  description = "Snowflake organization name (e.g., TEMPERPACK)"
}

variable "snowflake_username" {
  type        = string
  description = "Username for Snowflake access"
}

variable "snowflake_password" {
  type        = string
  description = "Password for Snowflake user"
  sensitive   = true
}

variable "snowflake_role" {
  type        = string
  description = "Snowflake role for Terraform actions"
}

variable "snowflake_region" {
  type        = string
  description = "Snowflake region (e.g., us-west-2)"
}
providers.tf
provider "snowflake" {
  account            = "${var.snowflake_organization_name}.${var.snowflake_account_name}"
  user               = var.snowflake_username
  password           = var.snowflake_password
  role               = var.snowflake_role
}

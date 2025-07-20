variable "snowflake_account_name" {
  description = "Snowflake account name"
  type        = string
}

variable "snowflake_organization_name" {
  description = "Snowflake organization name"
  type        = string
}

variable "snowflake_username" {
  description = "Username for Snowflake"
  type        = string
}

variable "snowflake_password" {
  description = "Password for Snowflake"
  type        = string
  sensitive   = true
}

variable "snowflake_role" {
  description = "Role to use in Snowflake"
  type        = string
}

variable "snowflake_region" {
  description = "Snowflake region (e.g., aws_us_west_2)"
  type        = string
}

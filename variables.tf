variable "snowflake_account_name" {
  type        = string
  description = "Snowflake account name (e.g., xy12345)"
}

variable "snowflake_region" {
  type        = string
  description = "Snowflake region (e.g., central-india.azure)"
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

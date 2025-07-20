variable "snowflake_account_name" {
  type        = string
  description = "Account locator prefix (e.g., xy12345)"
}

variable "snowflake_region" {
  type        = string
  description = "Region locator suffix (e.g., central-india.azure)"
}

variable "snowflake_username" {
  type        = string
  description = "Username for Snowflake"
}

variable "snowflake_password" {
  type        = string
  description = "Password for Snowflake"
  sensitive   = true
}

variable "snowflake_role" {
  type        = string
  description = "Snowflake role"
}

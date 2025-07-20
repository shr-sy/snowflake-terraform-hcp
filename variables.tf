variable "snowflake_account_locator" {
  description = "Account locator only, e.g., xy12345"
  type        = string
}

variable "snowflake_user" {
  description = "Snowflake user name"
  type        = string
}

variable "snowflake_password" {
  description = "Snowflake user password"
  type        = string
  sensitive   = true
}

variable "snowflake_role" {
  description = "Snowflake role"
  type        = string
}

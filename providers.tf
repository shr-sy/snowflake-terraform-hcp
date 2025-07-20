provider "snowflake" {
  account_name       = var.snowflake_account_name
  organization_name  = var.snowflake_organization_name
  region             = var.snowflake_region
  user               = var.snowflake_username
  password           = var.snowflake_password
  role               = var.snowflake_role
}

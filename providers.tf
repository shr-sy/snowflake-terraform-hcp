terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "1.0.5"
    }
  }
}

locals {
  full_snowflake_account = "${var.snowflake_account_name}.${var.snowflake_region}"
}

provider "snowflake" {
  account  = local.full_snowflake_account
  user     = var.snowflake_username
  password = var.snowflake_password
  role     = var.snowflake_role
}

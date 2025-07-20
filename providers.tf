terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "1.0.5"
    }
  }
}

locals {
  full_account_locator = "${var.snowflake_account_name}.${var.snowflake_region}"
}

provider "snowflake" {
  account_locator = local.full_account_locator
  username        = var.snowflake_username
  password        = var.snowflake_password
  role            = var.snowflake_role
}

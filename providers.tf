terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.72"
    }
  }
}

provider "snowflake" {
  account       = var.snowflake_account_locator   # NOT the org/account URL
  user          = var.snowflake_user              # renamed from 'username'
  password      = var.snowflake_password
  role          = var.snowflake_role
  region        = null                            # REMOVE or set to null
}

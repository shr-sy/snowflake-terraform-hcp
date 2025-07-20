terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"  # ✅ Correct new provider source
      version = "0.74.0"                 # ✅ Latest known stable version
    }
  }
}

provider "snowflake" {
  account  = "${var.snowflake_account_name}.${var.snowflake_region}"  # Combined form
  username = var.snowflake_username
  password = var.snowflake_password
  role     = var.snowflake_role
}

terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"  # ✅ NOT snowflake-labs
      version = "1.15.0"                 # ✅ latest stable as of now
    }
  }
}

provider "snowflake" {
  account = "${var.snowflake_account_name}.${var.snowflake_region}"  # ✅ Old-style combined
  username = var.snowflake_username
  password = var.snowflake_password
  role     = var.snowflake_role
}

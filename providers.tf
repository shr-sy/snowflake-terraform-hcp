terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = ">= 0.74.3"  # Latest recommended stable version
    }
  }
}

provider "snowflake" {
  # No need to specify account/user/password/role here
  # These will come from environment variables
}

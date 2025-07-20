terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.74.0" # Or latest stable
    }
  }
}

provider "snowflake" {
  # All credentials are provided via environment variables
}

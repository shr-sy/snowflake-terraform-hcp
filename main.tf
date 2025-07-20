resource "snowflake_warehouse" "test_wh" {
  name                          = "TEST_WH"
  warehouse_size                = "XSMALL"
  auto_suspend                  = 60
  initially_suspended           = true
  comment                       = "Test warehouse created by Terraform"
}

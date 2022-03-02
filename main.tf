resource "aws_cloudwatch_log_group" "group" {
  name              = var.name
  retention_in_days = var.retention
  kms_key_id        = var.kmskey
}
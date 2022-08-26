# terraform_cw_group

Terraform module to create cloudwatch log group.

## Dependencies

- KMS <https://github.com/virsas/terraform_kms>

## Terraform example

``` terraform
module "cw_cloudtrail" {
  source    = "git::https://github.com/virsas/terraform_cw_group.git?ref=v1.0.0"
  # this is the name of the group
  name      = "/aws/cloudtrail"
  # how long the log should be kept
  retention = 3
  # KMS KEY for group encryption. Required by AWS best practices.
  kmskey    = module.kms-global.arn
}
```

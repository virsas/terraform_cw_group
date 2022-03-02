# tfmod_cw_group

Terraform module to create cloudwatch log group.

## Dependencies

KMS <https://github.com/virsas/tfmod_kms>

## Terraform example

``` terraform
module "cw_cloudtrail" {
  source    = "github.com/virsas/tfmod_cw_group"
  # this is the name of the group
  name      = "/aws/cloudtrail"
  # how long the log should be kept
  retention = 3
  # KMS KEY for group encryption. Required by AWS best practices.
  kmskey    = module.kms-global.arn
}
```

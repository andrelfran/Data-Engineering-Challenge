terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-sns.git?ref=v3.0.0"
}

include {
  path = find_in_parent_folders()
}

###########################################################
# View all available inputs for this module:
# https://registry.terraform.io/modules/terraform-aws-modules/sns/aws/3.0.0?tab=inputs
###########################################################
inputs = {
  name = "sns-notification-orderstatus"
}

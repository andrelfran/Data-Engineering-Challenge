terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-dynamodb-table.git?ref=v1.0.0"
}

include {
  path = find_in_parent_folders()
}

###########################################################
# View all available inputs for this module:
# https://registry.terraform.io/modules/terraform-aws-modules/dynamodb-table/aws/1.0.0?tab=inputs
###########################################################
inputs = {
  # Controls how you are billed for read/write throughput and how you manage capacity. The valid values are PROVISIONED or PAY_PER_REQUEST
  # type: string
  billing_mode = "PROVISIONED"

  # Name of the DynamoDB table
  # type: string
  name = "OrderLocation"

  # The number of read units for this table. If the billing_mode is PROVISIONED, this field should be greater than 0
  # type: number
  read_capacity = 5

  # The number of write units for this table. If the billing_mode is PROVISIONED, this field should be greater than 0
  # type: number
  write_capacity = 5

  hash_key  = "orderId"
  range_key = "dateEvent"

  attribute {
    name = "orderId"
    type = "S"
  }

  attribute {
    name = "location"
    type = "S"
  }

  attribute {
    name = "status"
    type = "S"
  }

  attribute {
    name = "dateEvent"
    type = "N"
  }
  
}

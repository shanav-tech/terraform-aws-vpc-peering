provider "aws" {
  region = "ca-central-1"
}

locals {
  name        = "peering"
  environment = "test"
}

module "vpc-peering" {
  source = "./../../"

  name             = local.name
  environment      = local.environment
  requestor_vpc_id = "vpc-03fd7873c7958f5b5"
  acceptor_vpc_id  = "vpc-0959e06348b2c2b9e"
}
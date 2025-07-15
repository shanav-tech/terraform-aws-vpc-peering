provider "aws" {
  region = "eu-west-1"
}

module "vpc-peering" {
  source           = "./../.."
  name             = "vpc-peering"
  environment      = "prod"
  label_order      = ["environment", "name"]
  requestor_vpc_id = "vpc-0408156477974f013"
  acceptor_vpc_id  = "vpc-07fca4b652df66412"
  accept_region    = "us-east-1"
  auto_accept      = false
}


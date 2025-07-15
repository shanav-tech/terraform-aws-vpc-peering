variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. `name`,`Environment`."
}

variable "managedby" {
  type        = string
  default     = "shanav-tech"
  description = "ManagedBy, eg 'shanav-tech'."
}

variable "enable_peering" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating or accessing any resources."
}

variable "requestor_vpc_id" {
  type        = string
  description = "Requestor VPC ID."

}

variable "acceptor_vpc_id" {
  type        = string
  description = "Acceptor VPC ID."


}

variable "auto_accept" {
  type        = bool
  default     = true
  description = "Automatically accept the peering (both VPCs need to be in the same AWS account)."
}

variable "accept_region" {
  type        = string
  default     = ""
  description = "The region of the accepter VPC of the VPC Peering Connection."
}

variable "acceptor_allow_remote_vpc_dns_resolution" {
  type        = bool
  default     = true
  description = "Allow acceptor VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the requestor VPC."
}

variable "requestor_allow_remote_vpc_dns_resolution" {
  type        = bool
  default     = true
  description = "Allow requestor VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the acceptor VPC."
}


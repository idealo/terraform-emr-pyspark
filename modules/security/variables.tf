variable "name" {}
variable "vpc_id" {}

variable "ingress_cidr_blocks" {
  description = "List of CIDR blocks to allow incoming traffic from"
  type        = list(string)
}

variable "name" {
  description = "Name for the EMR cluster"
  type        = string
}

variable "region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet in which the EMR cluster will be launched"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC in which the EMR cluster will reside"
  type        = string
}

variable "key_name" {
  description = "Name of the EC2 key pair for SSH access to the instances"
  type        = string
}

variable "release_label" {
  description = "Release label for the EMR cluster"
  type        = string
}

variable "applications" {
  description = "List of applications to be installed and configured on the EMR cluster"
  type        = list(string)
}

variable "master_instance_type" {
  description = "EC2 instance type for the master node"
  type        = string
}

variable "master_ebs_size" {
  description = "EBS volume size (in GB) for the master node"
  type        = number
}

variable "core_instance_type" {
  description = "EC2 instance type for the core nodes"
  type        = string
}

variable "core_instance_count" {
  description = "Number of core nodes in the EMR cluster"
  type        = number
}

variable "core_ebs_size" {
  description = "EBS volume size (in GB) for the core nodes"
  type        = number
}

variable "ingress_cidr_blocks" {
  description = "List of CIDR blocks to allow incoming traffic from"
  type        = list(string)
}

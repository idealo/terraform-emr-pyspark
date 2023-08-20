# EMR general configurations
name                = "spark-app"
region              = "eu-central-1"
subnet_id           = "<subet_id>"
vpc_id              = "<vpc_id>"
key_name            = "<key_name>"
ingress_cidr_blocks = ["146.70.143.84/32"]
release_label       = "emr-6.12.0"
applications        = ["Hadoop", "Spark"]

# Master node configurations
master_instance_type = "m5.xlarge"
master_ebs_size      = "50"

# Slave nodes configurations
core_instance_type  = "m5.xlarge"
core_instance_count = 1
core_ebs_size       = "50"

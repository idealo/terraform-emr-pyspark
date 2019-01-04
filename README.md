# Terraform + EMR Bootstrap PySpark with Anaconda

This code should help to jump start PySpark with Anaconda on AWS using Terraform.

## Getting Started
1. Install Terraform on Mac: `brew install terraform`
2. Adjust the scripts (`bootstrap_actions.sh` and `pyspark_quick_setup.sh`) in `scripts` if necessary
3. Set parameters in `terraform.tfvars`
4. Start cluster:
```
terraform init
terraform apply
```
5. Destroy cluster:
```
terraform destroy
```

### Notes
* Configure AWS on your local machine: `aws configure`
* [AWS instance cost](https://aws.amazon.com/emr/pricing/) for `eu-central-1`

## Maintainers
* Dat Tran, github: [datitran](https://github.com/datitran)

## Copyright

See [LICENSE](LICENSE) for details.

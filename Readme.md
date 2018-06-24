Terraform Provider for Google Cloud Platform
==================

- Website: https://www.terraform.io
- Documentation: https://www.terraform.io/docs/providers/google/index.html

Requirements
------------

-	[Terraform](https://www.terraform.io/downloads.html) 0.10.x
- you should have google cloud account

Using the provider
----------------------

See the [Google Provider documentation](https://www.terraform.io/docs/providers/google/index.html) to get started using the Google provider.

Steps to create your own infra
----------------------
1. `Clone the git repository`
Generate authentication json using the link https://console.cloud.google.com/apis/credentials/serviceaccountkey and rename the file as account.json and move it to current repo
2. `terraform init`
3. `terraform plan`
4. `terraform apply`


Terraform severless modules
tf-module-lambda-layers tf-module-lambda tf-module-s3-lambda-trigger

This repository contains the following modules, which are published to Nexus under the com.dtcc.cna.terraform.aws group ID.

alt text

lambda - AWS Lambda Module- Serverless computing platform with standards
Directory Structure
jenkins.json - The declarative test and deploy definition for the development pipeline
build.jenkins.json - The declarative build definitaion for the development pipeline
docs - Repo content and *.md traces (images and hyperlinks)
modules - The reusable Terraform IaC modules
examples - Working examples that demonstrate how to use the reusable Terraform IaC modules
tests - TerraTest tests that consume the examples provided.
Usage of Terraform Serverless Modules
sample usage was set up in examples
In-order to encrypt the environment variable - Need to use _KMS_Ciphertext Terraform data resource
No VPC - Pass empty list of subnets and security groups to provision lambda without network configuration
Environment Variables - Pass empty map variable to create lambda without environment.
External Links
terraform_aws_lambda_resource.

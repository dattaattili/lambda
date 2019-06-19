Lambda Layer Overview
A Layer is a ZIP archive that contains libraries, a custom runtime, or other dependencies. with layers, you can use libraries in your lambda function without needing to include them in your deployment package.

Features
Layers supports upto 5 runtimes.
Lambda Function can use 5 Layers at a time.
The total unzipped size of the function and all layers can't exceed the unzipped deployment package size limit of 250 MB
alt text

Benefits of Layers
Layers let you keep your deployment package small, which makes development easier.
Layers supports versions
External Links
Terraform_aws_lambda_layers_resource.
AWS_lambda_layers.
AWS_lambda_layers_blog
Inputs
Name	Description	Type	Default	Required
compatilble_runtimes	The function runtime to use. Up to 5 runtimes can be specified.(nodejs, nodejs4.3, nodejs6.10, nodejs8.10, java8, python2.7, python3.6, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x)	list	n/a	yes
description	Description of what your Lambda Layer does.	string	n/a	yes
layer_name	A unique name for your Lambda Layer	string	n/a	yes
source_code_url	s3://bucketname/prefix or file://local_file_path	string	n/a	yes
Outputs
Name	Description
arn	The ARN of the Lambda Layer with version
created_date	The date this resource was created
layer_arn	The ARN of the Lambda Layer without version
source_code_size	The size in bytes of the function .zip file
version	This Lamba Layer version

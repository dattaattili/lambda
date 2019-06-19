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

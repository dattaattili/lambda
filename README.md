Lambda Overview
AWS Lambda is an event-driven, serverless computing platform provided by Amazon as a part of the Amazon Web Services. It is a compute service that runs code in response to events and automatically manages the compute resources required by that code.

AWS Lambda Service is integrated with several other AWS services to support the application code functionality.
with Lambda we can run code for virtually any type of application or backend service - all with zero administration.
Benefits of Serverless compute
No servers to manage - Just write the code and upload it to lambda
Continuous Scaling - Scaled your application in response to each trigger
Subsecond Metering - you are charged for every 100ms your code executes and the number of times your code is triggered.
Lambda Module Argument and Attribute References
Inputs
Name	Description	Type	Default	Required
default_tags	A mapping of tags to assign to the object	map	n/a	yes
function_name	A unique name for your Lambda Function	string	n/a	yes
handler	The function entrypoint in your code	string	n/a	yes
kms_key_arn	The ARN for the KMS encryption key	string	n/a	yes
role	IAM role attached to the Lambda Function	string	n/a	yes
runtime	The function runtime to use. (nodejs, nodejs4.3, nodejs6.10, nodejs8.10, java8, python2.7, python3.6, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x)	string	n/a	yes
security_group_ids	A list of security group IDs associated with the Lambda function	list	n/a	yes
source_code_url	s3://bucketname/prefix or file://local_file_path	string	n/a	yes
subnet_ids	A list of subnet IDs associated with the Lambda function	list	n/a	yes
environment_variables	The Lambda environment's configuration settings	map	<map>	no
memory_size	Amount of memory in MB your Lambda Function can use at runtime	string	"128"	no
publish	Whether to publish creation/change as new Lambda Function Version	string	"false"	no
timeout	The amount of time your Lambda Function has to run in seconds	string	"3"	no
Outputs
Name	Description
lambda_arn	The ARN of the Lambda
lambda_invoke_arn	The ARN to be used for invoking Lambda Function from API Gateway
lambda_kms_key_arn	The ARN for the KMS encryption key
lambda_last_modified	The date this resource was last modified
lambda_name	Name of the Lambda function
lambda_qualified_arn	The Amazon Resource Name (ARN) identifying your Lambda Function Version (if versioning is enabled via publish = true)
lambda_version	Latest published version of your Lambda Function

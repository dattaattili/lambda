Using AWS Lambda with S3
Amazon S3 can publish events (for example, when an object is created in a bucket) to AWS Lambda and invoke your Lambda function by passing the event data as a parameter. This integration enables you to write Lambda functions that process Amazon S3 events. In Amazon S3, you add bucket notification configuration that identifies the type of event that you want Amazon S3 to publish and the Lambda function that you want to invoke.

Permissions for your Lambda function
Regardless of what invokes a Lambda function, AWS Lambda executes the function by assuming the IAM role (execution role) that you specify at the time you create the Lambda function. Using the permissions policy associated with this role, you grant your Lambda function the permissions that it needs. For example, if your Lambda function needs to read an object, you grant permissions for the relevant Amazon S3 actions in the permissions policy. For more information, see AWS Lambda Execution Role.

Permissions for Amazon S3 to invoke your Lambda function
Amazon S3 cannot invoke your Lambda function without your permission. You grant this permission via the permissions policy associated with the Lambda function.

Benefits of Lambda with S3
User uploads an object to an S3 bucket (object-created event).
Amazon S3 detects the object-created event.
Amazon S3 invokes a Lambda function that is specified in the bucket notification configuration.
AWS Lambda executes the Lambda function by assuming the execution role that you specified at the time you created the Lambda function.
The Lambda function executes.
External Links
[Terraform_aws_s3_bucket_notification] (https://www.terraform.io/docs/providers/aws/r/s3_bucket_notification.html#events-2)

[Using AWS Lambda with Amazon S3] (https://docs.aws.amazon.com/lambda/latest/dg/with-s3.html)

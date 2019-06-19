## Attributes for lambda

output "lambda_name" {
  description = "Name of the Lambda function"
  value       = "${var.function_name}"
}

output "lambda_arn" {
  description = "The ARN of the Lambda"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_function.lambda.*.arn, list("")), 0) : element(concat(aws_lambda_function.lambda_file.*.arn, list("")), 0)}"
}

output "lambda_invoke_arn" {
  description = "The ARN to be used for invoking Lambda Function from API Gateway"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_function.lambda.*.invoke_arn, list("")), 0) : element(concat(aws_lambda_function.lambda_file.*.invoke_arn, list("")), 0)}"
}

output "lambda_qualified_arn" {
  description = "The Amazon Resource Name (ARN) identifying your Lambda Function Version (if versioning is enabled via publish = true)"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_function.lambda.*.qualified_arn, list("")), 0) : element(concat(aws_lambda_function.lambda_file.*.qualified_arn, list("")), 0)}"
}

output "lambda_version" {
  description = "Latest published version of your Lambda Function"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_function.lambda.*.version, list("")), 0) : element(concat(aws_lambda_function.lambda_file.*.version, list("")), 0)}"
}

output "lambda_last_modified" {
  description = "The date this resource was last modified"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_function.lambda.*.last_modified, list("")), 0) : element(concat(aws_lambda_function.lambda_file.*.last_modified, list("")), 0)}"
}

output "lambda_kms_key_arn" {
  description = "The ARN for the KMS encryption key"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_function.lambda.*.kms_key_arn, list("")), 0) : element(concat(aws_lambda_function.lambda_file.*.kms_key_arn, list("")), 0)}"
}

## Attributes for lambda layers

output "arn" {
  description = "The ARN of the Lambda Layer with version"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_layer_version.lambda_layer.*.arn, list("")), 0) : element(concat(aws_lambda_layer_version.lambda_layer_file.*.arn, list("")), 0)}"
}

output "layer_arn" {
  description = "The ARN of the Lambda Layer without version"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_layer_version.lambda_layer.*.layer_arn, list("")), 0) : element(concat(aws_lambda_layer_version.lambda_layer_file.*.layer_arn, list("")), 0)}"
}

output "created_date" {
  description = "The date this resource was created"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_layer_version.lambda_layer.*.created_date, list("")), 0) : element(concat(aws_lambda_layer_version.lambda_layer_file.*.created_date, list("")), 0)}"
}

output "source_code_size" {
  description = "The size in bytes of the function .zip file"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_layer_version.lambda_layer.*.source_code_size, list("")), 0) : element(concat(aws_lambda_layer_version.lambda_layer_file.*.source_code_size, list("")), 0)}"
}

output "version" {
  description = "This Lamba Layer version"
  value       = "${local.source_location_type == "s3" ? element(concat(aws_lambda_layer_version.lambda_layer.*.version, list("")), 0) : element(concat(aws_lambda_layer_version.lambda_layer_file.*.version, list("")), 0)}"
}

## Lambda Argument Reference

variable "events" {
  type        = "list"
  default     = ["s3:ObjectCreated:*"]
  description = "Event to trigger the Lambda function like(Put, post,copy..)"
}

variable "filter_prefix" {
  type        = "string"
  default     = "/"
  description = " object key name prefix"
}

variable "filter_suffix" {
  type        = "string"
  default     = "*"
  description = " object key name suffix"
}

variable "lambda_function_arn" {
  type        = "string"
  description = "A unique name for your Lambda Function"
}

variable "s3_bucket_name" {
  type        = "string"
  description = "The name of the S3 bucket"
}

variable "principal" {
  type        = "string"
  default     = "s3.amazonaws.com"
  description = "Permission for the s3 Bucket to access"
}

variable "action" {
  type        = "string"
  default     = "lambda:InvokeFunction"
  description = "Action to perform when the event occurs"
}

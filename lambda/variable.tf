## Lambda Argument Reference

variable "function_name" {
  type        = "string"
  description = "A unique name for your Lambda Function"
}

variable "role" {
  type        = "string"
  description = "IAM role attached to the Lambda Function"
}

variable "handler" {
  type        = "string"
  description = "The function entrypoint in your code"
}

variable "runtime" {
  type        = "string"
  description = "The function runtime to use. (nodejs, nodejs4.3, nodejs6.10, nodejs8.10, java8, python2.7, python3.6, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x)"
}

variable "kms_key_arn" {
  type        = "string"
  description = "The ARN for the KMS encryption key"
}

variable "memory_size" {
  type        = "string"
  default     = "128"
  description = "Amount of memory in MB your Lambda Function can use at runtime"
}

variable "timeout" {
  type        = "string"
  default     = "3"
  description = "The amount of time your Lambda Function has to run in seconds"
}

variable "default_tags" {
  type        = "map"
  description = "A mapping of tags to assign to the object"
}

variable "environment_variables" {
  type        = "map"
  description = "The Lambda environment's configuration settings"

  default = {
    test = "test"
  }
}

variable "subnet_ids" {
  type        = "list"
  description = "A list of subnet IDs associated with the Lambda function"
}

variable "security_group_ids" {
  type        = "list"
  description = " A list of security group IDs associated with the Lambda function"
}

variable "publish" {
  default     = "false"
  description = "Whether to publish creation/change as new Lambda Function Version"
}

variable "source_code_url" {
  type        = "string"
  description = "s3://bucketname/prefix or file://local_file_path "
}

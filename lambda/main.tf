locals {
  source_location_type = "${var.source_code_url == element(split(":", var.source_code_url), 0) ? "s3" : element(split(":", var.source_code_url), 0)}"
  source_code_url      = "${var.source_code_url == element(split(":", var.source_code_url), 0) ? "s3://${var.source_code_url}" : var.source_code_url }"
  s3_bucket            = "${ local.source_location_type == "s3" ? element(split("/", element(split("//", local.source_code_url),1)), 0) : ""}"
  s3_key               = "${ local.source_location_type == "s3" ? replace( local.source_code_url, "/s3://[^/]+//", "") : ""}"
  file_path            = "${ local.source_location_type == "file" ? replace( local.source_code_url, "/file:///", "") : ""}"
}

// Lambda Resource - Gets the deployment package from S3 Bucket

resource "aws_lambda_function" "lambda" {
  count            = "${local.source_location_type == "s3" ? 1:0}"
  function_name    = "${var.function_name}"
  publish          = "${var.publish}"
  role             = "${var.role}"
  handler          = "${var.handler}"
  runtime          = "${var.runtime}"
  s3_bucket        = "${local.s3_bucket}"
  s3_key           = "${local.s3_key}"
  source_code_hash = "${base64sha256(local.s3_key)}"
  kms_key_arn      = "${var.kms_key_arn}"
  memory_size      = "${var.memory_size}"
  timeout          = "${var.timeout}"
  tags             = "${merge(var.default_tags, map("name", format("%s", var.function_name)))}"

  environment = {
    variables = "${var.environment_variables}"
  }

  vpc_config {
    subnet_ids         = ["${var.subnet_ids}"]
    security_group_ids = ["${var.security_group_ids}"]
  }
}

// Lambda Resource - Gets the deployment package from local workspace

resource "aws_lambda_function" "lambda_file" {
  count            = "${local.source_location_type == "file" ? 1:0}"
  function_name    = "${var.function_name}"
  publish          = "${var.publish}"
  role             = "${var.role}"
  handler          = "${var.handler}"
  runtime          = "${var.runtime}"
  filename         = "${local.file_path}"
  source_code_hash = "${base64sha256(file(local.file_path))}"
  kms_key_arn      = "${var.kms_key_arn}"
  memory_size      = "${var.memory_size}"
  timeout          = "${var.timeout}"
  tags             = "${merge(var.default_tags, map("name", format("%s", var.function_name)))}"

  environment = {
    variables = "${var.environment_variables}"
  }

  vpc_config {
    subnet_ids         = ["${var.subnet_ids}"]
    security_group_ids = ["${var.security_group_ids}"]
  }
}

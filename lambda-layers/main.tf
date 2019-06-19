locals {
  source_location_type = "${var.source_code_url == element(split(":", var.source_code_url), 0) ? "s3" : element(split(":", var.source_code_url), 0)}"
  source_code_url      = "${var.source_code_url == element(split(":", var.source_code_url), 0) ? "s3://${var.source_code_url}" : var.source_code_url }"
  s3_bucket            = "${ local.source_location_type == "s3" ? element(split("/", element(split("//", local.source_code_url),1)), 0) : ""}"
  s3_key               = "${ local.source_location_type == "s3" ? replace( local.source_code_url, "/s3://[^/]+//", "") : ""}"
  file_path            = "${ local.source_location_type == "file" ? replace( local.source_code_url, "/file:///", "") : ""}"
}

// Lambda Layer Resource - Gets the deployment package from S3 Bucket

resource "aws_lambda_layer_version" "lambda_layer" {
  count               = "${local.source_location_type == "s3" ? 1:0}"
  layer_name          = "${var.layer_name}"
  s3_bucket           = "${local.s3_bucket}"
  s3_key              = "${local.s3_key}"
  compatible_runtimes = "${var.compatilble_runtimes}"
  description         = "${var.description}"
  source_code_hash    = "${base64sha256(local.s3_key)}"
}

// Lambda Layer Resource - Gets the deployment package from local workspace

resource "aws_lambda_layer_version" "lambda_layer_file" {
  count               = "${local.source_location_type == "file" ? 1:0}"
  layer_name          = "${var.layer_name}"
  filename            = "${local.file_path}"
  compatible_runtimes = "${var.compatilble_runtimes}"
  description         = "${var.description}"
  source_code_hash    = "${base64sha256(file(local.file_path))}"
}

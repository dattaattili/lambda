// Gather arn from bucket name

data "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.s3_bucket_name}"
}

// A source bucket with a notification configuration that invokes the Lambda function.

resource "aws_lambda_permission" "allow_bucket" {
  action        = "${var.action}"
  function_name = "${var.lambda_function_arn}"
  principal     = "${var.principal}"
  source_arn    = "${data.aws_s3_bucket.s3_bucket.arn}"
}

// A target bucket where the function saves

resource "aws_s3_bucket_notification" "s3_lambda_trigger" {
  bucket = "${var.s3_bucket_name}"

  lambda_function {
    lambda_function_arn = "${var.lambda_function_arn}"
    events              = "${var.events}"
    filter_prefix       = "${var.filter_prefix}"
    filter_suffix       = "${var.filter_suffix}"
  }
}

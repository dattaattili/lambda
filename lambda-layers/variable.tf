## Lambda Layers Argument Refernce

variable "layer_name" {
  type        = "string"
  description = " A unique name for your Lambda Layer"
}

variable "compatilble_runtimes" {
  type        = "list"
  description = "The function runtime to use. Up to 5 runtimes can be specified.(nodejs, nodejs4.3, nodejs6.10, nodejs8.10, java8, python2.7, python3.6, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, nodejs4.3-edge, go1.x)"
}

variable "description" {
  type        = "string"
  description = " Description of what your Lambda Layer does."
}

variable "source_code_url" {
  type        = "string"
  description = "s3://bucketname/prefix or file://local_file_path "
}

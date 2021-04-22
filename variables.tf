#
#
#
variable "example" {
  type = string
  description = "The value which will be passed to the example module"
  default = "Hello world from variables.tf"
}

variable "region" {
  type = string
  description = "AWS region"
}
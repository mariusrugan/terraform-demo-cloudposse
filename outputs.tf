output "id" {
  description = "ID of the created example"
  value = module.terraform-example-module.id
}

output "example" {
  description = "Output \"example\" from example module"
  value = module.terraform-example-module.example
}

output "random" {
  description = "Output \"random\" from example module"
  value = module.terraform-example-module.random
}

output "random_min" {
  description = "Output \"random_min\" from example module"
  value = module.terraform-example-module.random_min
}

output "random_max" {
  description = "Output \"random_max\" from example module"
  value = module.terraform-example-module.random_max
}

output "name" {
  description = "Output \"name\" from example module"
  value = module.terraform-example-module.name
}

output "namespace" {
  description = "Output \"namespace\" from example module"
  value = module.terraform-example-module.namespace
}

## debug
# output "this" {
#   description = "Output \"this\" from example module"
#   value = module.terraform-example-module.this
# }
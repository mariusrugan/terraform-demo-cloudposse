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

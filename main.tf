provider "aws" {
  region = var.region
}

module "terraform-example-module" {
  #source = "git::https://github.com/mariusrugan/terraform-example-module.git?ref=develop"
  source = "../terraform-example-module"

  example = var.example
  name = var.name

  namespace = module.this.namespace
  environment = module.this.environment

  context = module.this.context
}
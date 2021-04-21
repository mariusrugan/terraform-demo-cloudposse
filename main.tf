provider "aws" {
  region = "us-east-2"
}

module "terraform-example-module" {
  #source = "git::https://github.com/mariusrugan/terraform-example-module.git?ref=develop"
  source = "../terraform-example-module"

  example = var.example
  name = var.name

  context = module.this.context
}
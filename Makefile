SHELL := /bin/bash

# List of targets the `readme` target should call before generating the readme
export README_DEPS ?= docs/targets.md docs/terraform.md

-include $(shell curl -sSL -o .build-harness "https://git.io/build-harness"; echo .build-harness)

## Lint terraform code
lint:
	$(SELF) terraform/install terraform/get-modules terraform/get-plugins terraform/lint terraform/validate

## Override terraform init
terraform/init:
	@terraform init -get -backend=false -input=false -upgrade

## Override terraform apply
terraform/apply:
	@terraform apply -auto-approve -refresh=true -var-file="fixtures.us-east-2.tfvars"

## Deep-dive into terraform-example-module


### Added Makefile from ```terraform-example-module```
- init'd build-harness via make;
- investigation of the build-harness, skipped terraform local install;
- added entries to makefile for init & apply;

### context.tf
- added module terraform-example-module
- investigation on the context.tf; strange behaviour when using TF_VAR_id=some-name and not .tfvars, everything becomes "some-name"

```json
this = {
    ...
    "name" = "some-name"
  }
  ...
  "id" = "some-name"
  "id_full" = "some-name"
  "name" = "some-name"
  ...
```

### ouputs.tf
 - added outputs.tf

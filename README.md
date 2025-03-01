<!-- BEGIN_TF_DOCS -->
# Terratag PoC and Demo

- [Terratag PoC and Demo](#terratag-poc-and-demo)
  - [Description](#description)
  - [Problem statement](#problem-statement)
  - [Goals](#goals)
  - [Demo instructions](#demo-instructions)
- [Terraform documentation](#terraform-documentation)
  - [Providers](#providers)
  - [Resources](#resources)
  - [Inputs](#inputs)
- [License](#license)

## Description

This is a PoC/demo repository for Terratag. Terratag is a CLI tool allowing for tags to be applied across an entire set of Terraform or Terragrunt files.

## Problem statement

Developers and operators need a way to apply tags to resources in Terraform configurations in a consistent and easy way. This is important for cost tracking, security, and compliance reasons.

## Goals

- Demonstrate the use of Terratag to apply tags to Terraform resources.
- Show how Terratag can be used to apply tags to resources that do not have tags declared in the Terraform code.
- Show how Terratag can be used to apply tags to resources that have tags declared in the Terraform code.
- Show how Terratag can be used to apply tags to resources using a JSON file as input.

## Demo instructions

For the demo, we will be using a simple Terraform configuration that creates a Linux VM and a storage container in Azure.

The `vm.tf` contains no tags declared in the Terraform code. The `st.tf` contains tags declared in the form of `tag = var.tags` notation. The `var.tags` variable is defined in the `variables.tf` file and has a default value of `{"managed-by" = "terraform"}`.

The `tags.json` file contains the tags that will be applied to the resources in the Terraform configuration. Terratag does not support JSON files as an input natively, but we can use the following sintax to achieve this behavior:

```bash
terratag -tags="$(< tags.json)"
```

# Terraform documentation

## Providers

| Name                                                          | Version |
| ------------------------------------------------------------- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.21.1  |
## Resources

| Name                                                                                                                                      | Type     |
| ----------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azurerm_linux_virtual_machine.vm](https://registry.terraform.io/providers/hashicorp/azurerm/4.21.1/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.nic](https://registry.terraform.io/providers/hashicorp/azurerm/4.21.1/docs/resources/network_interface)        | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.21.1/docs/resources/resource_group)               | resource |
| [azurerm_storage_account.st](https://registry.terraform.io/providers/hashicorp/azurerm/4.21.1/docs/resources/storage_account)             | resource |
| [azurerm_storage_container.stc](https://registry.terraform.io/providers/hashicorp/azurerm/4.21.1/docs/resources/storage_container)        | resource |
| [azurerm_subnet.snet](https://registry.terraform.io/providers/hashicorp/azurerm/4.21.1/docs/resources/subnet)                             | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/4.21.1/docs/resources/virtual_network)           | resource |
## Inputs

| Name                                           | Description                           | Type          | Default                                            | Required |
| ---------------------------------------------- | ------------------------------------- | ------------- | -------------------------------------------------- | :------: |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | <pre>{<br/>  "managed-by": "terraform"<br/>}</pre> |    no    |
# License

This code is distributed under the terms of the MIT license. For more information, see the [LICENSE](../LICENSE) file.
<!-- END_TF_DOCS -->

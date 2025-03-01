resource "azurerm_storage_account" "st" {
  name                     = "st-${local.name}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags

}

resource "azurerm_storage_container" "stc" {
  name                  = "stc-${local.name}"
  storage_account_id    = azurerm_storage_account.st.id
  container_access_type = "private"
}

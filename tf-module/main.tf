data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "random_string" "random" {
  length           = 6
  special          = false
}


resource "azurerm_storage_account" "sa" {
  name                     = "${var.storage_account_name}-${random}"
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled = true

  tags = {
    environment = "dev"
  }
}

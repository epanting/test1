# Configure the Azure provider
provider "azurerm" {
    version         = "=1.38.0"
}

# Create a new resource group
resource "azurerm_resource_group" "rg1" {
    name     = "test-iaas-rg-eastus"
    location = "eastus"
}

resource "azurerm_storage_account" "stac1" {
  name                      = "prodinfratest1"
  resource_group_name       = azurerm_resource_group.rg1.name
  location                  = "eastus"
  account_kind              = "StorageV2"
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  enable_https_traffic_only = true
}

resource "azurerm_storage_account" "stac3" {
  name                      = "prodinfratest3"
  resource_group_name       = azurerm_resource_group.rg1.name
  location                  = "eastus"
  account_kind              = "StorageV2"
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  enable_https_traffic_only = true
}


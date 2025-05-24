provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  subnet_id           = module.network.subnet_id
  aks_name            = var.aks_name
}

module "functions" {
  source              = "./modules/functions"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  storage_account     = var.storage_account_name
}

module "keyvault" {
  source              = "./modules/keyvault"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  keyvault_name       = var.keyvault_name
}

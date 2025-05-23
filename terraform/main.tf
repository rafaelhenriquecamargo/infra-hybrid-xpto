provider "azurerm" {
  features {}
}

module "network" {
  source = "./modules/network"
}

module "aks" {
  source = "./modules/aks"
}

module "functions" {
  source = "./modules/functions"
}
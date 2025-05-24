variable "location" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Nome do Resource Group principal"
  type        = string
  default     = "rg-xpto-hybrid"
}

variable "vnet_name" {
  description = "Nome da VNet"
  type        = string
  default     = "vnet-xpto"
}

variable "subnet_name" {
  description = "Nome da Subnet para o AKS"
  type        = string
  default     = "subnet-aks"
}

variable "aks_name" {
  description = "Nome do Cluster AKS"
  type        = string
  default     = "aks-xpto"
}

variable "storage_account_name" {
  description = "Nome da Storage Account para Azure Functions"
  type        = string
  default     = "xptostoragefunc"
}

variable "keyvault_name" {
  description = "Nome do Azure Key Vault"
  type        = string
  default     = "kv-xpto"
}

data "azurerm_virtual_network" "aks_vnet" {
  name                = var.virtual_network_name
  resource_group_name = var.virtual_network_rg
}

data "azurerm_subnet" "node_subnet" {
  name                 = var.node_subnet_name
  virtual_network_name = data.azurerm_virtual_network.aks_vnet.name
  resource_group_name  = data.azurerm_virtual_network.aks_vnet.resource_group_name
}

data "azurerm_subnet" "pod_subnet" {
  name                 = var.pod_subnet_name
  virtual_network_name = data.azurerm_virtual_network.aks_vnet.name
  resource_group_name  = data.azurerm_virtual_network.aks_vnet.resource_group_name
}

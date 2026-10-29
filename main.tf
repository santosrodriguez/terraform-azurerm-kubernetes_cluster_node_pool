resource "azurerm_kubernetes_cluster_node_pool" "pool" {
  name                  = "common"
  kubernetes_cluster_id = var.kubernetes_cluster_id
  node_count            = var.node_count
  max_pods              = var.max_pods
  min_count             = var.min_count
  max_count             = var.max_count
  #orchestrator_version = "1.30.0"
  auto_scaling_enabled = var.enable_auto_scaling

  vm_size               = var.vm_size
  vnet_subnet_id        = data.azurerm_subnet.node_subnet.id
  zones                 = var.zones
  pod_subnet_id         = data.azurerm_subnet.pod_subnet.id
  os_sku                = var.os_sku
 
  
  

  upgrade_settings {
    max_surge = var.max_surge

  }

}

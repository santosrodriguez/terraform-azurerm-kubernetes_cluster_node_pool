variable "node_count" {
  type        = number
  description = "Node count"
  default     = 2
}

variable "min_count" {
  type        = number
  description = "Minimum node count when autoscaling is enabled."
  default     = 2
}

variable "max_count" {
  type        = number
  description = "Maximum node count when autoscaling is enabled."
  default     = 5
}

variable "max_pods" {
  type        = number
  description = "Maximum number of pods per node."
  default     = 30
}

variable "max_surge" {
  type        = string
  description = "Max surge for node pool upgrades."
  default     = "10%"
}

variable "temporary_name_for_rotation" {
  type        = string
  description = "Temporary node pool name used for rotation."
  default     = "temp"
}
variable "kubernetes_cluster_id" {
  type        = string
  description = "Kubernetes cluster id"
}
variable "enable_auto_scaling" {
  type        = bool
  description = "Enable cluster autoscaler for the default node pool."
  default     = true
}
variable "vm_size" {
  type        = string
  description = "VM SKU for the system node pool (e.g., Standard_D4s_v5)."
}
variable "zones" {
  type        = list(string)
  description = "Availability zones for node pool and AppGW."
  default = ["1", "2", "3"]
}
variable "os_sku" {
  type        = string
  description = "OS SKU for node pool."
  default     = "AzureLinux"
}



variable "virtual_network_name" {
  type        = string
  description = "Name of the existing VNet that contains AKS/AppGW/KeyVault subnets."
}

variable "virtual_network_rg" {
  type        = string
  description = "Resource group name where the existing VNet is located."
}

variable "node_subnet_name" {
  type        = string
  description = "Subnet name for AKS node pool."
}

variable "pod_subnet_name" {
  type        = string
  description = "Subnet name for AKS pod subnet (used with Azure CNI / pod_subnet_id)."
}

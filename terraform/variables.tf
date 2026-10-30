variable "location" {
  type        = string
  default     = "Central India"
  description = "Primary Azure region for resources"
}

variable "resource_group_name" {
  type        = string
  default     = "rg-devops-pipeline-prod"
  description = "Resource Group Name"
}

variable "app_name" {
  type        = string
  default     = "app-telemetry-devops-api"
  description = "Unique name for the Azure Linux Web App"
}

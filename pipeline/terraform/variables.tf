# variables.tf

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rust-yew-rg"
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "UK South"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "rust-yew-app-service-plan"
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
  default     = "rust-yew-app-service"
}

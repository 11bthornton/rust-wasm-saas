variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rust-yew-rg"
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "westeurope"
}

variable "static_site_name" {
  description = "The name of the Static Web App"
  type        = string
  default     = "rust-yew-static-site"
}

variable "branch_name" {
  description = "The branch to deploy"
  type        = string
  default     = "main"
}

variable "repository_url" {
  description = "The URL of the repository"
  type        = string
  default     = "https://github.com/your/repo"
}

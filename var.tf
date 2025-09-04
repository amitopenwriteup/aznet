variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "example-network"
}

variable "vnet_address_space" {
  description = "The address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "tags" {
  description = "Tags to assign to the Virtual Network"
  type        = map(string)
  default = {
    Environment = "vnet-terraform"
    CreatedBy   = "Terraform"
  }
}


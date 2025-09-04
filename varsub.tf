variable "subnets" {
  description = "Subnets to create in the VNet"
  type = map(object({
    address_prefixes = list(string)
  }))
  default = {
    subnet1 = { address_prefixes = ["10.0.1.0/24"] }
    subnet2 = { address_prefixes = ["10.0.2.0/24"] }
  }
}

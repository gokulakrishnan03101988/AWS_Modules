variable "name" {
  description = "Name of the managed prefix list"
  type        = string
}

variable "address_family" {
  description = "Address family (IPv4 or IPv6)"
  type        = string
  default     = "IPv4"

  validation {
    condition     = contains(["IPv4", "IPv6"], var.address_family)
    error_message = "address_family must be either IPv4 or IPv6."
  }
}

variable "max_entries" {
  description = "Maximum number of entries for the prefix list"
  type        = number
}

variable "entries" {
  description = "List of CIDR entries for the prefix list"
  type = list(object({
    cidr        = string
    description = optional(string)
  }))
}

variable "tags" {
  description = "Tags to apply to the prefix list"
  type        = map(string)
  default     = {}
}
``

variable "name" {
  type        = string
  description = "StandardSecurityGroup"
}

variable "description" {
  type        = string
  description = "Development, Acceptance & Production"
}

variable "vpc_id" {
  type        = string
  description = "vpc-1681ab7e"
}

variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of ingress rules"
}


variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to the security group"
}

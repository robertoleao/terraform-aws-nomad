
variable "security_group_id" {
  description = ""
  type        = string
}

variable "allowed_inbound_cidr_blocks" {
  description = ""
  type        = list(string)
}

variable "http_port" {
  description = ""
  type        = number
  default     = 4646
}

variable "rpc_port" {
  description = ""
  type        = number
  default     = 4647
}

variable "serf_port" {
  description = ""
  type        = number
  default     = 4648
}


variable "security_group_id" {
  description = "O ID do grupo de segurança ao qual devemos adicionar as regras do grupo de segurança Nomad"
  type        = string
}

variable "allowed_inbound_cidr_blocks" {
  description = "Endereços IP que permitirão conexões com o Nomad "
  type        = list(string)
}


variable "http_port" {
  description = "HTTP"
  type        = number
  default     = 4646
}

variable "rpc_port" {
  description = "RPC"
  type        = number
  default     = 4647
}

variable "serf_port" {
  description = "Serf"
  type        = number
  default     = 4648
}


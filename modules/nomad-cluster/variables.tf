
variable "cluster_name" {
  type        = string
}

variable "ami_id" {
  type        = string
}

variable "instance_type" {
  type        = string
}

variable "vpc_id" {
  type        = string
}

variable "allowed_inbound_cidr_blocks" {
  type        = list(string)
}

variable "user_data" {
  type        = string
}

variable "min_size" {
  type        = number
  default     = 3
}

variable "max_size" {
  type        = number
  default     = 4
}

variable "desired_capacity" {
  type        = number
  default     = 3
}

variable "asg_name" {
  type        = string
  default     = "Auto-nomad"
}

variable "subnet_ids" {
  type        = list(string)
  default     = null
}

variable "availability_zones" {
  type        = list(string)
  default     = null
}

variable "ssh_key_name" {
  description = "Altere por sua chave que ira usar"
  type        = string
  default     = "olimpo_test"
}

variable "allowed_ssh_cidr_blocks" {
  type        = list(string)
  default     = []
}

variable "cluster_tag_key" {
  type        = string
  default     = "nomad-servers"
}

variable "cluster_tag_value" {
  type        = string
  default     = "auto-join"
}

variable "termination_policies" {
  type        = string
  default     = "Default"
}

variable "associate_public_ip_address" {
  type        = bool
  default     = false
}

variable "tenancy" {
  type        = string
  default     = "default"
}

variable "root_volume_ebs_optimized" {
  type        = bool
  default     = false
}

variable "root_volume_type" {
  type        = string
  default     = "standard"
}

variable "root_volume_size" {
  type        = number
  default     = 50
}

variable "root_volume_delete_on_termination" {
  default     = true
  type        = bool
}

variable "wait_for_capacity_timeout" {
  type        = string
  default     = "0m"
}

variable "health_check_type" {
  type        = string
  default     = "EC2"
}

variable "health_check_grace_period" {
  type        = number
  default     = 300
}

variable "instance_profile_path" {
  type        = string
  default     = "/"
}

variable "http_port" {
  type        = number
  default     = 4646
}

variable "rpc_port" {
  type        = number
  default     = 4647
}

variable "serf_port" {
  type        = number
  default     = 4648
}

variable "ssh_port" {
  type        = number
  default     = 22
}

variable "security_groups" {
  type        = list(string)
  default     = []
}

variable "tags" {
  type = list(object({
    key                 = string
    value               = string
    propagate_at_launch = bool
  }))
  default = []

}

variable "ebs_block_devices" {
  type    = any
  default = []

}

variable "protect_from_scale_in" {
  type        = bool
  default     = false
}

variable "allow_outbound_cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "iam_permissions_boundary" {
  type        = string
  default     = null
}


variable "ami_id" {
  description = " AMI criada com o packer"
  type        = string
  default     = "ami-014b81dd766774360"
}

variable "cluster_name" {
  description = "Nome do cluster"
  type        = string
  default     = "nomad-example"
}

variable "instance_type" {
  description = "Tipo de instance"
  type        = string
  default     = "t2.micro"
}

variable "num_servers" {
  description = "Numero de servidores(master) de inplantação"
  type        = number
  default     = 4
}

variable "num_clients" {
  description = "Numero dos clientes(pods)"
  type        = number
  default     = 6
}

variable "cluster_tag_key" {
  description = "Tag para instance descobrir automaticamento o cluster"
  type        = string
  default     = "nomad-servers"
}

variable "cluster_tag_value" {
  description = "Add informação da tag cluster_tag_key em cada instance"
  type        = string
  default     = "auto-join"
}

variable "ssh_key_name" {
  description = "ssh chave (variavel vazio sem chave)"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "ID da vpc (vazio e o padrão)"
  type        = string
  default     = ""
}


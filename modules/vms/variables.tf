# Общие переменные
variable "folder_id" {
  type = string
}

variable "vms_ssh_root_key" {
  type = string
}

variable "image_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

# Переменные для WEB ВМ
variable "vm_web_name" {
  type = string
}

variable "vm_web_platform_id" {
  type = string
}

variable "vm_web_cores" {
  type = number
}

variable "vm_web_memory" {
  type = number
}

variable "vm_web_core_fraction" {
  type = number
}

variable "vm_web_preemptible" {
  type = bool
}

variable "vm_web_nat" {
  type = bool
}

variable "vm_web_zone" {
  type = string
}

# Переменные для DB ВМ
variable "vm_db_name" {
  type = string
}

variable "vm_db_platform_id" {
  type = string
}

variable "vm_db_cores" {
  type = number
}

variable "vm_db_memory" {
  type = number
}

variable "vm_db_core_fraction" {
  type = number
}

variable "vm_db_preemptible" {
  type = bool
}

variable "vm_db_nat" {
  type = bool
}

variable "vm_db_zone" {
  type = string
}

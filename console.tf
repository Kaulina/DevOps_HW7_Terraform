variable "test_list" {
  default = ["John", "admin", "prod"]
}

variable "test_map" {
  default = {
    admin = "John"
    role  = "admin"
  }
}

variable "servers" {
  default = {
    os    = "ubuntu-20-04"
    vcpu  = 4
    ram   = 8
    disks = ["disk1", "disk2", "disk3"]
  }
}

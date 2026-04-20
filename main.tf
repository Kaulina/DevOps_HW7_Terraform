terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.107.0"
    }
  }
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = "ru-central1-a"
}

# Data resources
data "yandex_compute_image" "ubuntu" {
  family = "ubuntu-2004-lts"
}

data "yandex_vpc_network" "existing" {
  name = var.vpc_name
}

data "yandex_vpc_subnet" "existing" {
  name = var.subnet_name
}

# Module call
module "vms" {
  source = "./modules/vms"

  # передаём провайдер в модуль
  providers = {
    yandex = yandex
  }

  folder_id        = var.folder_id
  vms_ssh_root_key = var.vms_ssh_root_key
  image_id         = data.yandex_compute_image.ubuntu.id
  subnet_id        = yandex_vpc_subnet.private_subnet.id

  # WEB VM
  vm_web_name          = var.vm_web_name
  vm_web_platform_id   = var.vm_web_platform_id
  vm_web_cores         = var.vm_web_cores
  vm_web_memory        = var.vm_web_memory
  vm_web_core_fraction = var.vm_web_core_fraction
  vm_web_preemptible   = var.vm_web_preemptible
  vm_web_nat           = var.vm_web_nat
  vm_web_zone          = "ru-central1-a"

  # DB VM
  vm_db_name          = var.vm_db_name
  vm_db_platform_id   = var.vm_db_platform_id
  vm_db_cores         = var.vm_db_cores
  vm_db_memory        = var.vm_db_memory
  vm_db_core_fraction = var.vm_db_core_fraction
  vm_db_preemptible   = var.vm_db_preemptible
  vm_db_nat           = var.vm_db_nat
  vm_db_zone          = "ru-central1-a"
}

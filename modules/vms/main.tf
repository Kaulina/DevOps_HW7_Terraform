terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.107.0"
    }
  }
}

locals {
  web_name = var.vm_web_name
  db_name  = var.vm_db_name
}

resource "yandex_compute_instance" "platform" {
  name        = local.web_name
  platform_id = var.vm_web_platform_id
  zone        = var.vm_web_zone

  allow_stopping_for_update = true

  resources {
    cores         = var.vm_web_cores
    memory        = var.vm_web_memory
    core_fraction = var.vm_web_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.vm_web_nat
  }

  metadata = {
    ssh-keys = var.vms_ssh_root_key
  }
}

resource "yandex_compute_instance" "platform_db" {
  name        = local.db_name
  platform_id = var.vm_db_platform_id
  zone        = var.vm_db_zone

  allow_stopping_for_update = true

  resources {
    cores         = var.vm_db_cores
    memory        = var.vm_db_memory
    core_fraction = var.vm_db_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.vm_db_nat
  }

  metadata = {
    ssh-keys = var.vms_ssh_root_key
  }
}

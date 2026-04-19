terraform {
  required_version = ">= 1.0.0"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.107"
    }
  }
}

provider "yandex" {
  cloud_id  = "b1g94ecfq1al18t5jd43"
  folder_id = "b1grv7g6v3d86hdtr30s"
  zone      = "ru-central1-a"

  service_account_key_file = "key.json"
}
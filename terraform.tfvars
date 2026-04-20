cloud_id  = "b1g94ecfq1al18t5jd43"
folder_id = "b1grv7g6v3d86hdtr30s"
vms_ssh_root_key = "ssh-rsa AAAAB...= irina@yandex-vm"

vpc_name    = "netology-network"
subnet_name = "netology-network-ru-central1-a"

token       = "t1...jNBA"


# WEB VM
vm_web_name          = "web"
vm_web_platform_id   = "standard-v3"
vm_web_cores         = 2
vm_web_memory        = 2
vm_web_core_fraction = 20
vm_web_preemptible   = false
vm_web_nat           = false

# DB VM
vm_db_name          = "db"
vm_db_platform_id   = "standard-v3"
vm_db_cores         = 2
vm_db_memory        = 4
vm_db_core_fraction = 20
vm_db_preemptible   = false
vm_db_nat           = false
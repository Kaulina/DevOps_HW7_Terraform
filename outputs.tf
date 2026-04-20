output "instances_info" {
  value = {
    web = module.vms.web
    db  = module.vms.db
  }
}

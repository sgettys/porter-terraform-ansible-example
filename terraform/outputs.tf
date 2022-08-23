output "inventory_file_name" {
  value = "${abspath(path.module)}/${local_file.ansible_inventory.filename}"
}
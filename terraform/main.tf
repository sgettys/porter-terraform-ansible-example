resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/templates/ansible-inventory.tmpl",{username = var.username})
  filename = "${path.module}/ansible-inventory" 
}

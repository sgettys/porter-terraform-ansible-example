#!/usr/bin/env bash
set -euo pipefail

install() {
  echo Running Ansible
  ansible-inventory -i $1 --list --yaml
}

upgrade() {
  echo Some Inventory Changes
  ansible-inventory -i $1 --list --yaml
}

uninstall() {
  echo Deprovision
  ansible-inventory -i $1 --list --yaml
}

# Call the requested function and pass the arguments as-is
"$@"

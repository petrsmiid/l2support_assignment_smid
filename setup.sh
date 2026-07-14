#!/bin/bash

set -e
echo "=== Setup environment ==="

# Ansible installation check

if ! command -v ansible-playbook &> /dev/null; then
echo "Installing Ansible..."
sudo apt update
sudo apt install -y ansible
else
echo "Ansible OK"
fi

# Docker installation check

echo "Installing Ansible Docker collection..."
ansible-galaxy collection install community.docker

echo "=== Running playbook ==="

ansible-playbook playbook.yml

echo "=== Done ==="
echo "Orthanc běží na http://localhost:8042"

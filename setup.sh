#!/usr/bin/env bash

set -e

# Check if apt-get is available
if ! command -v apt-get >/dev/null 2>&1; then
  echo "apt-get was not found. Please run this on Debian/Ubuntu Linux."
  exit 1
fi

# Install Ansible if it is not installed yet
if ! command -v ansible-playbook >/dev/null 2>&1; then
  echo "Installing Ansible..."
  sudo apt-get update
  sudo apt-get install -y ansible
else
  echo "Ansible OK"
fi

# Install the Ansible collection needed for Docker containers
echo "Installing Ansible Docker collection..."
ansible-galaxy collection install community.docker

# Run the Ansible playbook
echo "Running playbook..."
ansible-playbook playbook.yml

# Print final information
echo "Done."
echo "Orthanc should be available at http://localhost:8042"
echo "Default credentials: orthanc / orthanc"

#!/bin/bash

chmod 600 .vault_pass
chmod 600 cloud-1_key
chmod 600 cloud-1_key.pub
source .env/bin/activate
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook  --private-key ./cloud-1_key -i inventory.yaml setup_cloud-1.yaml --vault-password-file .vault_pass

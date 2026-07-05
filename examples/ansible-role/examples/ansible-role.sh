#!/usr/bin/env bash
set -o errexit
set -o nounset

cd ../
. ./.venv/bin/activate
cd examples/

ansible-galaxy role install .. --force --roles-path ../stage/test-examples/roles/

ansible-playbook -i localhost, -c local playbook-direct.yaml
ansible-playbook -i localhost, -c local playbook-import.yaml

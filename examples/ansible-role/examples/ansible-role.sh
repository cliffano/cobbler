#!/usr/bin/env bash
set -o errexit
set -o nounset

cd ../
. ./.venv/bin/activate
cd examples/

mkdir -p ../stage/test-examples/roles/
rm -rf ../stage/test-examples/roles/cliffano.cobblerexample
cp -R ${PWD}/../ ../stage/test-examples/roles/cliffano.cobblerexample

ansible-playbook -i localhost, -c local playbook-direct.yaml
ansible-playbook -i localhost, -c local playbook-import.yaml

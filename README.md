# k3s-knative-arm

Ansible Playbooks to deploy K3s and Knative on ARM

## Pre-requisites

The following tools must be installed on the machine acting as Ansible server:

- Ansible
- The `kubernetes.core.k8s` Ansible collection
- SSH access to a Linux machine (can be the same machine as the Ansible server) where the Kubernetes "cluster" will be installed

## Quickstart

- Define your host in `hosts.yaml`. Read here for more info
- The "sudo" password for the user defined in the `hosts.yaml` file must be defined as a vaulted variable. To do it:
  - delete the file in group_vars/all/vault
  - recreate it by running: `ansible-vault create group_vars/all/vault`
  - define the following variable inside: `vaulted_ansible_become_password: YOUR_USER_PASSWORD`
- Run all the Playbooks by running: `make`

## Disclaimer

This has been tested on Ubuntu Server 20.04 running on a VM (Parallels) on an Apple Macbook Air 💻 with the M1 Apple CPU (ARM)

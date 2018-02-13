#! /bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible.io  -y
sudo apt-get upgrade
cd ansible
git init
git clone https://github.com/andreipak/wordpress-ansible.git
cd wordpress-ansible
sudo ansible playbook -i hosts playbook.yml

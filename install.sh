#! /bin/bash

download_dir="downloaded-roles"

# From https://github.com/Benoth/ansible-ubuntu/blob/master/install.sh
###################
# Install ansible #
if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA"
    apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    apt-get update
    apt-get install make software-properties-common ansible git python-apt -y
else
    echo "Ansible already installed"
fi

# Check roles download directory exists
if [ ! -d $download_dir ]; then
    mkdir $download_dir
fi

echo "[*] installing roles from Ansible Galaxy"
# Install roles to directory specified in `ansible.cfg`
ansible-galaxy install -r requirements.yml

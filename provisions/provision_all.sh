#!/usr/bin/env bash

USER=""


echo "Starting Begin Configure"

# Creating users on SO
sudo useradd ${USER}
sudo usermod -aG wheel ${USER}

# Add directory .ssh to input ssh-keys and insert key USER
sudo mkdir -p /home/${USER}/.ssh
sudo cp /vagrant/sync_foler/${USER}.pub /home/${USER}/.ssh/authorized_keys
sudo chown ${USER}: /home/${USER}/.ssh -Rv

# Add ${USER} no sudo
sudo cp /vagrant/sync_folder/${USER}.sudo  /etc/sudoers.d/${USER}


echo "Provisioning Complete"
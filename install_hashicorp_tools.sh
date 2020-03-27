#!/bin/bash

VAGRANT_VERSION=2.2.7
PACKER_VERSION=1.5.4
TERRAFORM_VERSION=0.12.23

sudo apt-get install -y curl unzip

curl -Lo vagrant_${VAGRANT_VERSION}_x86_64.deb https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.deb
sudo dpkg -i vagrant_${VAGRANT_VERSION}_x86_64.deb
rm -fr vagrant_${VAGRANT_VERSION}_x86_64.deb

curl -Lo packer_${PACKER_VERSION}_linux_amd64.zip https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip
unzip -o packer_${PACKER_VERSION}_linux_amd64.zip
chmod +x packer
sudo mv packer /usr/local/bin/
rm -fr packer_${PACKER_VERSION}_linux_amd64.zip

curl -Lo terraform_${TERRAFORM_VERSION}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip
chmod +x terraform
sudo mv terraform /usr/local/bin/
rm -fr terraform_${TERRAFORM_VERSION}_linux_amd64.zip

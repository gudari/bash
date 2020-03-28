#!/bin/bash

echo "===== Install .Net Core ====="
wget -q https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm -fr packages-microsoft-prod.deb

sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1 -y
echo "DONE"

echo "===== Install PowerShell ====="
sudo apt-get update
sudo apt-get install -y powershell
echo "DONE"

echo "===== Install Azure CLI ====="
sudo rm -fr /etc/apt/sources.list.d/azure-cli.list
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
sudo tee /etc/apt/sources.list.d/azure-cli.list

curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install apt-transport-https azure-cli -y
echo "DONE"

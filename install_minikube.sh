#!/bin/bash

MINIKUBE_VERSION=1.16.0
HELM_VERSION=3.4.2

sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo rm -fr /etc/apt/sources.list.d/kubernetes.list
sudo touch /etc/apt/sources.list.d/kubernetes.list 
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

curl -Lo minikube https://storage.googleapis.com/minikube/releases/v${MINIKUBE_VERSION}/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/
minikube config set memory 10240
minikube config set cpus 4

curl -Lo helm-v${HELM_VERSION}-linux-amd64.tar.gz https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz
tar xvzf helm-v${HELM_VERSION}-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/
rm -fr linux-amd64
rm -fr helm-v${HELM_VERSION}-linux-amd64.tar.gz

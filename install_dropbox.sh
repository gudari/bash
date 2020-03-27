#!/bin/bash

sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
sudo rm -fr /etc/apt/sources.list.d/dropbox.list
echo 'deb [arch=amd64] http://linux.dropbox.com/debian buster main' | sudo tee /etc/apt/sources.list.d/dropbox.list

sudo apt-get update -y
sudo apt-get install -y curl dropbox

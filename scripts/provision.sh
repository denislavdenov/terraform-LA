#!/usr/bin/env bash

apt-get update -y
apt-get install vim -y
apt-get install curl -y

# Install terraform and docker CE

curl -O https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
apt-get install unzip
mkdir /bin/terraform 
unzip terraform_0.11.10_linux_amd64.zip -d /usr/local/bin/

apt-get update -y
apt-get install apt-transport-https -y 
apt-get install ca-certificates -y
apt-get install software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |   apt-key add -
add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
apt-get update -y
apt-get install docker-ce -y

#!/usr/bin/env bash

# Install tools
apt-get update
apt-get install -y vim curl unzip

# Install terraform
curl -O https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
apt-get install unzip
mkdir /bin/terraform 
unzip terraform_0.11.10_linux_amd64.zip -d /usr/local/bin/

# Insall docker
apt-get install -y apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |   apt-key add -
add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"

apt-get update
apt-get install -y docker-ce
# end

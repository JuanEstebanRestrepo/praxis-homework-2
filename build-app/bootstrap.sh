#!/usr/bin/env bash

#Install GIT
sudo yum install git -y
echo "GIT installed"
#Install GO
sudo yum install golang -y
echo "GO installed"

#Add NodeSource yum repository
sudo yum install -y gcc-c++ make
sudo curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
#Install NodeJS and NPM
sudo yum install nodejs -y
echo "nodejs installed"
node --version
npm --version

#Install VUE cli
sudo npm install -g @vue/cli
echo "vue cli installed"

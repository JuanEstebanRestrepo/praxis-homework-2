#!/usr/bin/env bash

# Create Go project 

#download Go last version
curl -O https://storage.googleapis.com/golang/go1.17.2.linux-amd64.tar.gz
#verify integrity file
sha256sum go1.17.2.linux-amd64.tar.gz
#extract data
sudo tar -C /usr/local -xvf go1.17.2.linux-amd64.tar.gz

export GOPATH=$HOME/go

export PATH=$PATH:/usr/local/go/bin:GOPATH/bin

mkdir go && cd go/
git clone https://github.com/JuanEstebanRestrepo/vuego-demoapp.git
cd vuego-demoapp/server
go build

sudo mv vuego-demoapp ../../../../../shared/


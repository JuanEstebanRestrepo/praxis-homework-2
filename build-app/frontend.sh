#!/usr/bin/env bash

# Create Vue app 
cd go/vuego-demoapp/
sudo rm -rf spa
vue create spa --no-git

sudo chmod 777 spa/
cd spa
ls -la

# Change var
cat > nginx.conf <<- "EOF"
VUE_APP_API_ENDPOINT = "http://10.0.0.8:4001/api";
EOF

ls -la
sudo npm run build

# Compress folder
tar -czvf dist.tar.gz dist
mv dist.tar.gz ../../../../../shared/

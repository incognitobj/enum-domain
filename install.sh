#!/bin/bash

# Installer Go, nécessaire pour Amass et AssetFinder
sudo apt-get update
sudo apt-get install -y golang

# Installer findomain
cd /tmp
git clone https://github.com/Edu4rdSHL/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/

# Installer SubFinder
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder

# Installer AssetFinder
GO111MODULE=on go get -v github.com/tomnomnom/assetfinder

# Installer Amass
GO111MODULE=on go get -v github.com/OWASP/Amass/v3/...

# Ajouter les outils au PATH
echo 'export PATH=$PATH:/root/go/bin' >> ~/.bashrc
source ~/.bashrc

echo "Installation terminée !"

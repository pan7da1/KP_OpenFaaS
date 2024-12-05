#!/bin/bash
apt-get install -y
cd /tmp
git clone https://github.com/openfaas/faasd --depth=1 #install faasd
cd faasd
./hack/install.sh
curl -sSL https://cli.openfaas.com | sudo sh #intall faas-cli
sudo cat /var/lib/faasd/secrets/basic-auth-password #password for faas gateway-panel
echo
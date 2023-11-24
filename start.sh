#!/bin/sh

cd /xray

apk update
apk add --no-cache wget unzip
wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip
wget https://raw.githubusercontent.com/shamitum/xray-docker-custom-config/main/config.json
unzip ./Xray-linux-64.zip
rm ./Xray-linux-64.zip
./xray -c ./config.json

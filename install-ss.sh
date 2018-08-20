#!/bin/bash

echo "apt install update"

apt-get install update

echo "install pip"
apt-get install python-pip

echo "install shadowsocks"
pip install shadowsocks

# install libsodium
echo "install libsodium"

apt-get install build-essential
wget https://github.com/jedisct1/libsodium/releases/download/1.0.15/libsodium-1.0.15.tar.gz
tar xf libsodium-1.0.15.tar.gz && cd libsodium-1.0.15
./configure && make -j2 && make install
ldconfig

cd ~

CONFIG = '
{
    "server":"0.0.0.0",
    "server_port":443,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"password123",
    "timeout":300,
    "method":"salsa20",
    "fast_open": false
}
'

echo $CONFIG

echo $CONFIG > ss.json

echo "start shadowsocks"

ssserver -c ~/ss.json -d start

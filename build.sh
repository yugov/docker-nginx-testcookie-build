#!/bin/bash

apt-get update -y
apt-get dist-upgrade -y

apt-get install build-essential unzip -y gnupg -y
curl https://nginx.ru/keys/nginx_signing.key | apt-key add -

apt-get update -y

apt-get source nginx -y
apt-get build-dep nginx -y

git clone https://github.com/kyprizel/testcookie-nginx-module
mv /tmp/nginx-1* /tmp/nginx && cd /tmp/nginx/ && patch -p0 < ../nginx-module.patch && dpkg-buildpackage

cp /tmp/*.deb /target

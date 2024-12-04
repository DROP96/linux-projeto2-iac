#!/bin/bash

echo "Atualizando e instalando ferramentas no servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Bainxando arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -r * /var/www/html/


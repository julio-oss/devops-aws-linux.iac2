
#!bin/bash

echo 'atualizando o servidor...'


apt update -y
apt upgrade -y

apt install apache2 -y
apt install unzip -y


echo 'iniciando o apache2...'

systemctl restart apache2

echo 'removendo o arquivo html...'

cd /var/www/html
rm html

echo 'baixando e copiando os arquivos da aplicacao...'


cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html


echo 'acesse o site'

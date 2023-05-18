#!/bin/bash

echo "Atualizar o servidor"
apt update
apt upgrade -y

echo "Instalar o Apache2"
apt install apache2 -y

echo "Instalar o unzip"
apt install unzip -y

echo "Baixar a aplicação no diretório /tmp"
wget https://github.com/LeoJaques/social-tree/archive/refs/heads/main.zip -P /tmp

echo "Extrair a aplicação"
unzip /tmp/main.zip -d /tmp

echo "Copiar os arquivos da aplicação para o diretório padrão do Apache"
cp -r /tmp/social-tree-main/* /var/www/html/

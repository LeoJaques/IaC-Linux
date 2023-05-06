#!/bin/bash

echo "CRIANDO DIRETÓRIOS"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "CRIANDO GRUPOS"


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "DEFININDO PROPIETARIOS/GRUPOS DOS DIRETORIOS"


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


echo "PERMISSÕES DO DIRETORIO" 


chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "CRIANDO USUARIOS"

useradd -c "Carlos" -m -d /home/carlos -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM carlos

useradd -c "Maria" -m -d /home/maria -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM maria

useradd -c "Joao" -m -d /home/joao -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM joao 

useradd -c "Debora" -m -d /home/debora -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN debora 

useradd -c "Sebastiana" -m -d /home/sebastiana -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN sebastiana 

useradd -c "Roberto" -m -d /home/roberto -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN roberto 

useradd -c "Josefina" -m -d /home/josefina -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC josefina 

useradd -c "Amanda" -m  -d /home/amanda -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC amanda 

useradd -c "Rogerio" -m -d /home/rogerio -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC rogerio



passwd -e carlos
passwd -e maria
passwd -e joao
passwd -e debora
passwd -e sebastiana
passwd -e roberto
passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo "Finalizado!!!"

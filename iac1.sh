#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN
useradd sabastiana -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC
useradd amanada -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC


echo "Permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM..."

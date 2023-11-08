#!/bin/bash

echo "Criando diretórios"

mkdir /publica
mkdir /admin
mkdir /ven
mkdir /sec


echo "Criando group users"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando users e add nos group"

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC


echo "Permissão dos Diretórios"

chown root:GRP_ADM /admin
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /admin/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publica/


echo "Finalizado com Sucesso"

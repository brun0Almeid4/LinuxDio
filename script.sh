#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários no sistema..."

useradd carlos	    -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd carlos	   -e  -G GRP_ADM
useradd maria	      -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd maria	     -e  -G GRP_ADM
useradd joao_	      -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd joao_	     -e  -G GRP_ADM

useradd debora	    -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd debora	   -e  -G GRP_VEN
useradd sebastiana  -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd sebastiana -e  -G GRP_VEN
useradd roberto	    -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd roberto	   -e  -G GRP_VEN

useradd josefina    -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd josefina   -e  -G GRP_SEC
useradd amanda      -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd amanda     -e  -G GRP_SEC
useradd rogerio     -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd rogerio    -e  -G GRP_SEC

echo "Adicionando permissões aos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado"
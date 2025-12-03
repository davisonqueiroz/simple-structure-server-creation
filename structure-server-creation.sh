#!/bin/bash

echo "Criando os diretórios iniciais..."
mkdir /publico /adm /ven /sec
echo "Diretórios criados com sucesso!"

echo "Inicializando os grupos..."

gropadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt UserLgn1234) -G GRP_ADM
useradd maria  -m -s /bin/bash -p $(openssl passwd -crypt UserLgn1234) -G GRP_ADM
useradd joao  -m -s /bin/bash -p $(openssl passwd -crypt UserLgn1234) -G GRP_ADM

useradd debora  -m -s /bin/bash -p $(openssl passwd -crypt UserLgn1234) -G GRP_VEN
useradd sebastiana  -m -s /bin/bash -p $(openssl passwd -crypt UserLgn1234) -G GRP_VEN
useradd roberto  -m -s /bin/bash -p $(openssl passwd -crypt UserLgn1234) -G GRP_VEN

useradd josefina  -m -s /bin/bash -p $(openssl passwd -crypt UserLgn1234) -G GRP_SEC
useradd amanda  -m -s /bin/bash -p $(openssl passwd -crypt UserLgn1234) -G GRP_SEC
useradd rogerio  -m -s /bin/bash -p $(openssl passwd -crypt UserLgn1234) -G GRP_SEC

echo "Processo finalizado!"

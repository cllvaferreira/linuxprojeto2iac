#!/bin/bash

echo "Criando diretórios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd claudiof -c "Claudio Ferreira" -m -s /bin/bash -p Mudar123 -G GRP_ADM 
useradd carla -c "Carla Amorin" -m -s /bin/bash -p Mudar123 -G GRP_ADM
useradd antonio -c "Antonio Solis" -m -s /bin/bash -p Mudar123 -G GRP_ADM

useradd miriam -c "Miriam Silva" -m -s /bin/bash -p Mudar123 -G GRP_VEN 
useradd antonia -c "Antonia Prado" -m -s /bin/bash -p Mudar123 -G GRP_VEN 
useradd rafael -c "Rafael Silva" -m -s /bin/bash -p Mudar123 -G GRP_VEN 

useradd josefa -c "Josefa Dores" -m -s /bin/bash -p Mudar123 -G GRP_SEC 
useradd tereza -c "Tereza Lopez" -m -s /bin/bash -p Mudar123 -G GRP_SEC 
useradd rodolfo -c "Rodolfo Amado" -m -s /bin/bash -p Mudar123 -G GRP_SEC 

echo "Alterando permissoes dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado..."

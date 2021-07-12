#!/bin/bash

echo "Digite o dominio: " 
read dominio
echo "############################## RESOLVENDO ################################# " 

for server in $(host -t ns $dominio | cut -d " " -f4)
do
host -l $dominio $server | grep "has address"
done

cd ..
./main.sh
#!/bin/bash

echo -e "\e[92mDigite o dominio: \e[0m"
read dominio
echo -e "\e[92mDigite o nome do arquivo de lista: \e[0m"
read lista

for url in $(cat $lista);
do
host $url.$dominio | grep "has address"
done

cd ..
./main.sh

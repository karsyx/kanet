#!/bin/bash

echo -e "\e[92mDigite o domínio: \e[0m"
read dominio

echo -e "\e[45m#################################################################################################\e[0m"
echo -e "\e[92mResolvendo Name Servers: \e[0m"

host -t ns $dominio | cut -d " " -f4

echo -e "\e[45m#################################################################################################\e[0m"
echo -e "\e[92mResolvendo Mail Servers: \e[0m"

host -t mx $dominio | cut -d " " -f7

echo -e "\e[45m#################################################################################################\e[0m"
echo -e "\e[92mTentando transferir zona: \e[0m"

for server in $(host -t ns $dominio | cut -d " " -f4)
do
host -l $dominio $server | grep "has address"
done

echo -e "\e[45m#################################################################################################\e[0m"
echo -e "\e[92mRealizando brute force para encontrar subdomínios: \e[0m"

echo -e "\e[92mDigite o nome do arquivo de lista: \e[0m"
read lista

for url in $(cat $lista);
do
host $url.$dominio | grep "has address"
done

cd ..
./main.sh
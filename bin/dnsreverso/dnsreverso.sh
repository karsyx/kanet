#!/bin/bash

echo -e "\e[92mDigite o IP sem o bloco final: \e[0m"
read ip2
echo -e "\e[92mInforme o range do IP\e[0m"
echo -e "\e[92mSequencia inicia em: \e[0m"
read inicio
echo -e "\e[92mSequencia termina em: \e[0m"
read final

for ip in $(seq $inicio $final);
do
echo -e "\e[92mRange $ip:\e[0m"
host $ip2.$ip
done

cd ..
./main.sh
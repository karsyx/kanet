#!/bin/bash

echo -e "\e[92mDigite o IP sem o último bloco 'EX: 192.168.0': \e[0m"
read ip

echo -e "\e[92mInforme o início do range: \e[0m"
read seq2

echo -e "\e[92mInforme o range final: \e[0m"
read seq3

for seq in $(seq $seq2 $seq3)
do ping -c1 $ip.$seq | grep "64 bytes"
done

cd ..

./main.sh
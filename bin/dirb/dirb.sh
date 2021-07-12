#!/bin/bash

echo -e "\e[92mDigite o domínio: \e[0m"
read dominio

echo -e "\e[92mDigite o diretório do arquivo .txt: \e[0m"
read arquivo

dirb $dominio $arquivo

cd ..
./main.sh
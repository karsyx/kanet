#!/bin/bash

echo "Digite o domínio a ser analisado: "
read dominio

echo "Digite o nome da lista .txt "
read lista

echo "***************** Encontrando diretórios *********************"

for palavra in $(cat $lista)
do
resposta=$(curl -s -o /dev/null -w "%{http_code}" $dominio/$palavra/) #Com a ultima barra ele porcura por diretórios, sem a ultima barra ele procura por aquivos.
if [ $resposta == "200" ]
then
echo "Diretorio encontrado: $palavra"
fi
done

echo "***************** Encontrando arquivos *********************"

for palavra in $(cat $lista)
do
resposta=$(curl -s -o /dev/null -w "%{http_code}" $dominio/$palavra) #Com a ultima barra ele porcura por diretórios, sem a ultima barra ele procura por aquivos.
if [ $resposta == "200" ]
then
echo "Arquivo encontrado: $palavra"
fi
done

cd ..
./main.sh
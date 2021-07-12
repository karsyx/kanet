#!/bin/bash

read dominio #Pede e salva o domínio informado como variável.

	if [ "$dominio" == "" ] #Caso o usuário não forneça entrada para um domínio, a condição abaixo irá pedir uma entrada válida para continuação do script.
		then
			echo -e "\e[91mDomínio inválido!\e[0m"
			echo -e "\e[91mDigite um domínio válido. Exemplo de domínio: 'dominio.com'\e[0m"
			./loganaliser.sh
	fi

cd .. #Volta para a pasta log.

cd .. #Volta para pasta bin.

cd cache #Entra na pasta cache.

echo -e "\e[92m***********************REALIZANDO O DOWNLOAD DO ACCESS.LOG*****************************\e[0m"

wget $dominio/access.log #Realiza o download do access.log do domínio informado e salva dentro da pasta "log".

echo -e "\e[96m*********************************DOWNLOAD CONCLUIDO**********************************\e[0m"

cd .. #Volta para a pasta bin.

cd log #Entra na pasta log.

cd loganaliser
chmod +x functions.sh
./functions.sh

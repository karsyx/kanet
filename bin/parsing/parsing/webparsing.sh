#!/bin/bash

read dominio #Pede e salva o domínio informado como variável.

	if [ "$dominio" == "" ] #Caso o usuário não forneça entrada para um domínio, a condição abaixo irá pedir uma entrada válida para continuação do script.
		then
			echo -e "\e[91mDomínio inválido!\e[0m"
			echo -e "\e[91mDigite um domínio válido. Exemplo de domínio: 'Globo.com\e[0m"
			./webparsing.sh
	fi

cd .. #Volta para a pasta raiz do programa 

cd .. #volta para basta bin

cd cache #Entra na pasta index.

mkdir parsing:$dominio #Cria uma pasta com o nome do dominio.

cd parsing:$dominio #Entra na pasta com o nome do domínio.

echo -e "\e[92m***********************REALIZANDO O DOWNLOAD DA INDEX.HTML*****************************\e[0m"

wget -r $dominio #Realiza o download dentro da pasta com o nome do parsing:domínio.

echo -e "\e[96m*********************************DOWNLOAD CONCLUIDO**********************************\e[0m"
echo -e "\e[92m*********************************REALIZANDO PARSING**********************************\e[0m"

cat index.html | grep href | cut -d "/" -f3 | cut -d '"' -f1 | grep "\." > list #Realiza um filtro na index.html pegando as informações relevantes

	for endereco in $(cat list)
		do host $endereco
	done | grep "has address" > resultado

rm list

echo -e "\e[96m*********************************PARSING CONCLUÍDO***********************************\e[0m"
echo -e "\e[91mARQUIVO COM OS RESULTADOS SALVO NA PASTA '../bin/cache/parsing:nome-do-dominio/'\e[0m"
echo -e "\e[92mDeseja apagar o aquivo 'index.html'? Y/N\e[0m"

read entrada

	if [ "$entrada" == "y" ]
		then
			rm index.html
			echo -e "\e[91mArquivo HTML deletado.\e[0m"
	fi
	
	if [ "$entrada"	== "n" ]
		then
		echo -e "\e[91mArquivo HTML mantido\e[0m"
	fi

echo -e "\e[92mDeseja visualizar o resultado? Y/N\e[0m"

read open

	if [ "$open" == "y" ]
		then
		cat resultado
		echo -e "\e[91mVOCÊ TAMBÉM PODERÁ VISUALIZAR OS RESULTADOS NO ARQUIVO DENTRO DA PASTA '../index/nome-do-dominio/'\e[0m"
	fi

	if [ "$open" == "n" ]
		then
		echo -e "\e[91mVOCÊ PODERÁ VISUALIZAR OS RESULTADOS NO ARQUIVO DENTRO DA PASTA '../index/nome-do-dominio/'\e[0m"
	fi

echo -e "\e[105mOBRIGADO POR UTILIZAR O MEU SCRIPT!\e[0m"

cd .. #volta para pasta cache

cd .. #volta para pasta bin

./main.sh
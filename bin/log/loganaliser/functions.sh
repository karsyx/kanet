#!/bin/bash

echo -e "\e[105mDigite o número da opção desejada.\e[0m"
echo -e "\e[92m1: Para ver todos os IP's que foram registrados.\e[0m"
echo -e "\e[92m2: Para ver a quantidade que cada IP's acessou o domínio.\e[0m"
echo -e "\e[92m3: Para pesquisar qual programa utilizado pelo o IP selecionado.\e[0m"
echo -e "\e[92m4: Para ver data do ataque pelo o IP selecionado.\e[0m"
echo -e "\e[92m5: Para finalizar.\e[0m"

read entrada #Pede e salva o entrada informado como variável.

	if [ "$entrada" == "" ] #Caso o usuário não forneça a entrada para a função, a condição abaixo irá pedir uma entrada válida para continuação do script.
		then
			echo -e "\e[91mFunção inválida!\e[0m"
			echo -e "\e[91mDigite o número da opção desejada. Exemplo '1' ou '2' ou '3'...\e[0m"
			./functions.sh
	fi

	if [ "$entrada" == "1" ] #Mostra todos os ip's do access.log
		then
			cd ..
			cd ..
			cd cache
			cat access.log | cut -d " " -f1| sort -u > todos_ips
			nl todos_ips
			cd ..
			cd log
			cd loganaliser
			echo -e "\e[91mARQUIVO DE REGISTRO CRIADO EM ../cache/log:dominio/\e[0m"
			./functions.sh
	fi

	if [ "$entrada" == "2" ] #Mostra quantidade de acesso de cada ip no access.log
		then
			cd ..
			cd ..
			cd cache
			cat access.log | cut -d " " -f1 | sort | uniq -c | sort -unr > quantidade_ips
			cat quantidade_ips
			cd ..
			cd log
			cd loganaliser
			echo -e "\e[91mARQUIVO DE REGISTRO CRIADO EM ../log/\e[0m"
			./functions.sh
	fi

	if [ "$entrada" == "3" ] #Mostra o programa utilizado.
		then
			cd ..
			cd ..
			cd cache
			echo -e "\e[92mDigite o IP\e[0m"
			read ip
			echo -e "\e[92mDigite '1' para nessus.\e[0m"
			echo -e "\e[92mDigite '2' para nikto.\e[0m"
			read program
				if [ "$program" == "1"]
					then
						cat access.log | grep "$ip" | grep "nessus" > analysis
				fi
				if [ "$program" == "2" ]
					then
						cat access.log | grep "$ip" | grep "nikto" > analysis
				fi
			cd ..
			cd log
			cd loganaliser
			echo -e "\e[91mARQUIVO DE REGISTRO CRIADO EM ../log/\e[0m"
			./functions.sh
	fi

	if [ "$entrada" == "4" ] #Mosra a data do ataque do ip selecionado.
		then
			cd ..
			cd ..
			cd cache
			echo -e "\e[92mDigite o IP\e[0m"
			read ip
			cat access.log | grep "$ip" | cut -d "[" -f2 | cut -d "]" -f1 | cut -d ":" -f1 | sort | sort -u > data
			cat data
			cd ..
			cd log
			cd loganaliser
			echo -e "\e[91mARQUIVO DE REGISTRO CRIADO EM ../log/\e[0m"
			./functions.sh
	fi

	if [ "$entrada" == "5" ] #Finaliza o script
		then
			echo -e "\e[92mDeseja apagar o arquivo access.log? Y/N\e[0m"
			read  delete
				if [ "$delete" == "y" ]
					then
					cd ..
					cd ..
					cd cache
					rm access.log
					echo -e "\e[91maccess.log deletado.\e[0m"
					cd ..
					./main.sh
				else
					echo -e "\e[91maccess.log mantido.\e[0m"
					cd ..
					cd ..
					./main.sh
				fi
	fi
echo -e "\e[105mANALISE FINALIZADA. OBRIGADO POR USAR O MEU SCRIPT!\e[0m"
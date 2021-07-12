#!/bin/bash

read entrada

#Entrada de redundância, caso o operador inserir alguma entrada inválida.

if [ "$entrada" == "" ] #Caso o usuário não forneça entrada, entra em looping até fazer uma entrada válida.
	then
		echo -e "\e[91mEntrada inválida! Entre com uma entrada novamente\e[0m"
		echo -e "\e[91mEx: Entre com número 1 para executar um webparsing\e[0m"
		./option.sh
fi

#Entradas que irão chamar a aplicação desejada.

if [ "$entrada" == "1" ] #Chama a aplicação de web parsing.
	then
		cd parsing
		chmod +x exec.sh
		./exec.sh
fi

if [ "$entrada" == "2" ] #Chama a aplicação do analizador de log.
	then
		cd log
		chmod +x exec.sh
		./exec.sh
fi

if [ "$entrada" == "3" ] #Chama a aplicação de verificador de porta.
	then
		cd conecta
		chmod +x conecta.sh
		./conecta.sh
fi

if [ "$entrada" == "4" ] #Chama a aplicação de receiver.
	then
		cd receiver
		chmod +x receiver.sh
		./receiver.sh
fi

if [ "$entrada" == "5" ] #Chama a aplicação portscan.
	then
		cd portscan
		chmod +x portscan.sh
		./portscan.sh
fi

if [ "$entrada" == "6" ] #Chama a aplicação whois.
	then
		cd whois
		chmod +x whois.sh
		./whois.sh
fi

if [ "$entrada" == "7" ] #Chama a aplicação "descobre" que faz uma analise de diretórios e arquivos.
	then
		cd descobre
		chmod +x descobre.sh
		./descobre.sh
fi

if [ "$entrada" == "8" ] #Chama a aplicação de dns reverso.
	then
		cd dnsreverso
		chmod +x dnsreverso.sh
		./dnsreverso.sh
fi

if [ "$entrada" == "9" ] #Chama a aplicação de brute force de dns.
	then
		cd bruteforcedns
		chmod +x dns.sh
		./dns.sh
fi

if [ "$entrada" == "10" ] #Chama a aplicação de transferência de zona de dns.
	then
		cd dnstransfer
		chmod +x zonetransfer.sh
		./zonetransfer.sh
fi

if [ "$entrada" == "11" ] #Chama a aplicação de enumeração de dns.
	then
		cd enumeracaodns
		chmod +x enumeracaodns.sh
		./enumeracaodns.sh
fi

if [ "$entrada" == "12" ] #Chama a aplicação DIRB.
	then
		cd dirb
		chmod +x dirb.sh
		./dirb.sh
fi

if [ "$entrada" == "13" ] #Chama a aplicação Traceroute.
	then
		cd traceroute
		chmod +x traceroute.sh
		./traceroute.sh
fi

if [ "$entrada" == "14" ] #Chama a aplicação PING.
	then
		cd ping2
		chmod +x ping.sh
		./ping.sh
fi

if [ "$entrada" == "15" ] #Chama a aplicação fPING.
	then
		cd fping
		chmod +x fping.sh
		./fping.sh
fi

if [ "$entrada" == "exit" ] #Chama a aplicação de web parsing.
	then
		echo -e "\e[91m************************************ Aplicação encerrada ****************************************\e[0m"
fi
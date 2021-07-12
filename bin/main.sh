#!/bin/bash

#Menu de todo o programa

echo -e "\e[105m********************************************** MENU *********************************************\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				1: Webparsing\e[0m" "\e[105m							*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				2: Analisador de LOG\e[0m" "\e[105m						*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				3: Verificador de porta\e[0m" "\e[105m					*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				4: Data receiver IP/Porta TCP\e[0m" "\e[105m					*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				5: Portscan\e[0m" "\e[105m							*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				6: Whois\e[0m" "\e[105m							*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				7: Scan de diretórios e arquivos\e[0m" "\e[105m				*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				8: DNS reverso\e[0m" "\e[105m							*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				9: Brute force DNS\e[0m" "\e[105m						*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				10: Transferência de DNS\e[0m" "\e[105m					*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				11: Enumeração DNS\e[0m" "\e[105m						*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				12: Dirb\e[0m" "\e[105m							*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				13: Traceroute\e[0m" "\e[105m							*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				14: Ping\e[0m" "\e[105m							*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				15: fPing\e[0m" "\e[105m							*\e[0m"
echo -e "\e[105m*\e[0m" "\e[92m				exit: Fechar o programa\e[0m" "\e[105m					*\e[0m"
echo -e "\e[105m*************************************************************************************************\e[0m"

chmod +x option.sh
./option.sh
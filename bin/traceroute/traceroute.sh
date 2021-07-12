#!/bin/bash

echo -e "\e[92mDigite o domínio: \e[0m" 
read dominio

echo -e "\e[92m1: Para protocolo UDP\e[0m"
echo -e "\e[92m2: Para protocolo TCP\e[0m"
echo -e "\e[92m1: Para protocolo ICMP\e[0m"
read option

if [ "$option" == "1" ]
	then
		sudo traceroute $dominio
fi

if [ "$option" == "2" ]
	then
		sudo traceroute $dominio -T
fi

if [ "$option" == "3" ]
	then
		sudo traceroute $dominio -I
fi

cd ..
./main.sh
#!/bin/bash

echo -e "\e[92mDigite o ip com o nenor range: \e[0m"
read ip

echo -e "\e[92minforme o range final: \e[0m"
read range

fping -g $ip/$range 2> /dev/null

cd ..
./main.sh
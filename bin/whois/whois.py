#!/usr/bin/python2.7

import socket
ip = raw_input("Digite o ip whois: ")
porta = input("Digite a porta: ")
dominio = raw_input("Digite o dominio: ")

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((ip, porta))
s.send(dominio)
resp = s.recv(1024)
print resp
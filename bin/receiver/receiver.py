#!/usr/bin/python2.7

import socket
ip = raw_input("Digite o ip ")
porta = input("Digite a porta ")

meusocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
meusocket.connect((ip,porta))
data = meusocket.recv(1024)
print "Chave encontrada:",data
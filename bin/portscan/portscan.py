#!/usr/bin/python2.7

import socket
ip = raw_input("Digite o ip do alvo ")

for porta in range(1,65535):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	if s.connect_ex((ip, porta)) == 0:
		print "Porta",porta,"[ABERTA]"
		s.close()
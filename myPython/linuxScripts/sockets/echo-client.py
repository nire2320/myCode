#!usr/bin/env python3

import socket

HOST = '127.0.0.1'	# Server's hostname/IP
PORT = 65432	# Port used by server

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
	s.connect((HOST, PORT))
	s.sendall(b'Hello, world')
	data = s.recv(1024)

print("Recieved : ", repr(data))

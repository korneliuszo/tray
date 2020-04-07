#!/usr/bin/env python3

import socket
import errno

import udpconn
import p_01

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.bind(("127.0.0.1", 9998))
s.listen(1)

u=udpconn.udp_conn()

while True:
    (clientsocket, address) = s.accept()
    clientsocket.setblocking(0)
    print("Aceppted connection")
    while True:
        recv = b''
        try:
            recv=clientsocket.recv(26)
            if len(recv) == 0:
                break
        except socket.error as e:
            if e.errno != errno.EAGAIN:
                raise e
        i=0
        if len(recv)>0:
            print("Sending: ", recv)
        while True:
            (written,to_send)=p_01.serial_io(u,1,recv[i:])
            if len(to_send) > 0:
                print("Receiving: ", to_send)
            clientsocket.send(to_send)
            i+=written
            if i == len(recv):
                break

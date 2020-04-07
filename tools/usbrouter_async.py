#!/usr/bin/env python3

import usbconn
import sys
import socket
import threading
import datetime

class Cache:
    def __init__(self):
        self.cache=dict()
        self.maxsize=5
    def set_key(self,conn):
        for key, value in self.cache.items():
            if value[1] == conn:
                self.cache[key]=(datetime.datetime.now(),conn)
                return key
        if len(self.cache) < self.maxsize:
            key=len(self.cache)
        else:
            key=min(self.cache.items(), key=lambda x: x[1][0])[0]
        self.cache[key]=(datetime.datetime.now(),conn)
        return key
    def get_key(self,key):
        return self.cache[key][1]

c=Cache()
u=usbconn.usb_conn()
s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.bind(("127.0.0.1",9999))

def recv_thread():
    global c,u,s
    while True:
        recv=u.recv_packet()
        addr=c.get_key(recv[0])
        s.sendto(recv[1:],addr)

x = threading.Thread(target=recv_thread)
x.start()

while True:
    data, addr=s.recvfrom(32)
    k=c.set_key(addr)
    u.send_packet(k.to_bytes(1,'little')+data)

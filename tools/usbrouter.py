#!/usr/bin/env python3
import usbconn
import sys

u=usbconn.usb_conn()
ctr=0

import socketserver

class MyUDPHandler(socketserver.BaseRequestHandler):
    def handle(self):
        global ctr, u
        data = self.request[0]
        socket = self.request[1]
        ctr+=1
        if ctr == 256:
            ctr=0
        try:
            recv = u.packet_raw(ctr.to_bytes(1,'little')+data)
            if recv[0] == ctr:
                socket.sendto(recv[1:], self.client_address)
        except Exception as err:
            print("Err:", err)

if __name__ == "__main__":
    HOST, PORT = "localhost", 9999
    with socketserver.UDPServer((HOST, PORT), MyUDPHandler) as server:
        server.serve_forever()

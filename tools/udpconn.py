import socket

class udp_conn:
    def __init__(self, host="localhost", port=9999):
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.settimeout(1)
        self.remoteep = (host, port)

    def packet(self,data):
        self.sock.sendto(data, self.remoteep)
        return self.sock.recv(32)


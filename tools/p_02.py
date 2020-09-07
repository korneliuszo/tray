import struct
import time

def set_measure_channel(conn,id_board,channel):
    d=conn.packet(struct.pack("<BBBB",id_board,0x02,0x00,channel))
    return

def init_measurement(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0x02,0x01))
    return

def get_measurement(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0x02,0x02))
    return struct.unpack("<BBBBI",d)[3:5]

def measure(conn,id_board,channel):
    i,_=get_measurement(conn,id_board)
    set_measure_channel(conn,id_board,channel)
    init_measurement(conn,id_board)
    while True:
        i2,val=get_measurement(conn,id_board)
        if i2!=i:
            break
        time.sleep(0.5)
    if channel == 0:
        val*=64
    if channel == 3:
        val*=128
    if channel == 4:
        val*=256
    return val

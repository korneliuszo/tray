import struct

def set_measure_channel(conn,id_board,channel):
    d=conn.packet(struct.pack("<BBBB",id_board,0x02,0x00,channel))
    return

def init_measurement(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0x02,0x01))
    return

def get_measurement(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0x02,0x02))
    return struct.unpack("<BBBBI",d)[3:5]


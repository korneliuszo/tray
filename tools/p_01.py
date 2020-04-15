import struct

def serial_io(conn,id_board,tx):
    d=conn.packet(struct.pack("<BBB",id_board,0x01,0x00)+tx)
    return (struct.unpack("<BBBB",d[0:4])[3],d[4:])

def get_mode(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0x01,0x01))
    return struct.unpack("<BBBB",d)[3]

def set_mode(conn,id_board,mode):
    d=conn.packet(struct.pack("<BBBB",id_board,0x01,0x01,mode))
    return struct.unpack("<BBBB",d)[3]

def get_probe(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0x01,0x02))
    (probe,not_ppm) = struct.unpack("<BBBBh",d)[3:5]
    return (probe,not_ppm/10)

def set_pwm(conn,id_board,pwm):
    d=conn.packet(struct.pack("<BBBH",id_board,0x01,0x03,pwm))
    return

def get_auto(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0x01,0x04))
    u=struct.unpack("<BBBbBHH",d)[3:7]
    return {"cumm": u[0], "pos":u[1], "pwm": u[2], "count":u[3]}

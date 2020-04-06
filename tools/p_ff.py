import struct

def ping1(conn,id_board,byte):
    d=conn.packet(struct.pack("<BBBB",id_board,0xff,0x00,byte))
    return struct.unpack("<BBBB",d)[3]

def set_addr(conn,id_board,addr):
    d=conn.packet(struct.pack("<BBBB",id_board,0xff,0x01,addr))
    return

def enter_bootloader(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0xff,0x02))
    return

def enter_app(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0xff,0x03))
    return

def get_mode(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0xff,0x04))
    return struct.unpack("<BBBB",d)[3]


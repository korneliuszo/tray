import struct

def get_spmsize(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0xfe,0x00))
    return struct.unpack("<BBBH",d)[3]

def get_data(conn,id_board,addr,l):
    assert(l <=26)
    d=conn.packet(struct.pack("<BBBIB",id_board,0xfe,0x01,addr,l))
    return d[3:]

def set_page(conn,id_board,addr):
    d=conn.packet(struct.pack("<BBBI",id_board,0xfe,0x02,addr))
    return

def erase_page(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0xfe,0x03))
    return

def fill_page(conn,id_board,data):
    d=conn.packet(struct.pack("<BBB",id_board,0xfe,0x04)+data)
    return

def write_page(conn,id_board):
    d=conn.packet(struct.pack("<BBB",id_board,0xfe,0x05))
    return


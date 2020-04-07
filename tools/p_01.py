import struct

def serial_io(conn,id_board,tx):
    d=conn.packet(struct.pack("<BBB",id_board,0x01,0x00)+tx)
    return (struct.unpack("<BBBB",d[0:4])[3],d[4:])

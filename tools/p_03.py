import struct
import time

cal=dict()

def get_raw_meas(conn,id_board,channel):
    d=conn.packet(struct.pack("<BBBB",id_board,0x03,0x00,channel))
    while True:
        d=conn.packet(struct.pack("<BBB",id_board,0x03,0x01))
        du=struct.unpack("<BBBB",d)[3]
        if du:
            break
    d=conn.packet(struct.pack("<BBB",id_board,0x03,0x02))
    return struct.unpack("<BBBH",d)[3]
       
def get_meas(conn,id_board,channel):
    global cal
    if not id_board in cal:
        get_raw_meas(conn,id_board,3)
        # first conversion is inaccurate
        r=get_raw_meas(conn,id_board,3)
        cal[id_board] = 1024/r*1.1
        
    get_raw_meas(conn,id_board,channel)
    # first conversion is inaccurate
    return get_raw_meas(conn,id_board,channel)*cal[id_board]/1024
    
def ad8302_meas(conn,id_board):
    raw_mag=get_meas(conn,id_board,0)
    raw_phase=get_meas(conn,id_board,1)
    mag=(raw_mag-0.9)/0.029
    phase=(raw_phase-0.9)/0.010-90
    return (mag,phase)
    
def ad8318_meas(conn,id_board):
    raw_mag=get_meas(conn,id_board,2)
    return (raw_mag-0.5)*(-40)
    
    
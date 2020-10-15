import struct
import time

import ctypes
import math
import fractions

class _REG5(ctypes.LittleEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("regnum",ctypes.c_uint,3),
        ("reserved1",ctypes.c_uint,16),
        ("reserved2",ctypes.c_uint,2),
        ("reserved3",ctypes.c_uint,1),
        ("ld_pin",ctypes.c_uint,2),
        ("reserved4",ctypes.c_uint,8)
    ]

class REG5(ctypes.Union):
    _anonymous_ = ("u",)
    _fields_ = [
        ("u",_REG5),
        ("register",ctypes.c_uint32)
    ]

class _REG4(ctypes.LittleEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("regnum",ctypes.c_uint,3),
        ("output_power",ctypes.c_uint,2),
        ("rf_out",ctypes.c_uint,1),
        ("aux_power",ctypes.c_uint,2),
        ("aux_out",ctypes.c_uint,1),
        ("aux_type",ctypes.c_uint,1),
        ("mute_unlocked",ctypes.c_uint,1),
        ("vco_power",ctypes.c_uint,1),
        ("band_select",ctypes.c_uint,8),
        ("rf_div",ctypes.c_uint,3),
        ("feedback_select",ctypes.c_uint,1),
        ("reserved1",ctypes.c_uint,8)
    ]

output_power = {
    -4 : 0,
    -1 : 1,
    +2 : 2,
    +5 : 3
}

class REG4(ctypes.Union):
    _anonymous_ = ("u",)
    _fields_ = [
        ("u",_REG4),
        ("register",ctypes.c_uint32)
    ]

class _REG3(ctypes.LittleEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("regnum",ctypes.c_uint,3),
        ("clk_div",ctypes.c_uint,12),
        ("clk_div_mode",ctypes.c_uint,2),
        ("reserved1",ctypes.c_uint,1),
        ("csr",ctypes.c_uint,1),
        ("reserved2",ctypes.c_uint,2),
        ("charge_cancel",ctypes.c_uint,1),
        ("abp",ctypes.c_uint,1),
        ("band_select_clock",ctypes.c_uint,1),
        ("reserved3",ctypes.c_uint,8)
    ]

class REG3(ctypes.Union):
    _anonymous_ = ("u",)
    _fields_ = [
        ("u",_REG3),
        ("register",ctypes.c_uint32)
    ]

class _REG2(ctypes.LittleEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("regnum",ctypes.c_uint,3),
        ("counter_reset",ctypes.c_uint,1),
        ("cp_three_state",ctypes.c_uint,1),
        ("power_down",ctypes.c_uint,1),
        ("pd_polarity",ctypes.c_uint,1),
        ("ldp",ctypes.c_uint,1),
        ("ldf",ctypes.c_uint,1),
        ("cp_current",ctypes.c_uint,4),
        ("double_buffer_r4",ctypes.c_uint,1),
        ("r",ctypes.c_uint,10),
        ("ref_div",ctypes.c_uint,1),
        ("ref_dbl",ctypes.c_uint,1),
        ("muxout",ctypes.c_uint,3),
        ("low_noise_spur",ctypes.c_uint,2),
        ("reserved1",ctypes.c_uint,1)
    ]

class REG2(ctypes.Union):
    _anonymous_ = ("u",)
    _fields_ = [
        ("u",_REG2),
        ("register",ctypes.c_uint32)
    ]

class _REG1(ctypes.LittleEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("regnum",ctypes.c_uint,3),
        ("mod",ctypes.c_uint,12),
        ("phase",ctypes.c_uint,12),
        ("prescaler",ctypes.c_uint,1),
        ("phase_adjust",ctypes.c_uint,1),
        ("reserved1",ctypes.c_uint,3)
    ]

class REG1(ctypes.Union):
    _anonymous_ = ("u",)
    _fields_ = [
        ("u",_REG1),
        ("register",ctypes.c_uint32)
    ]

class _REG0(ctypes.LittleEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("regnum",ctypes.c_uint,3),
        ("frac",ctypes.c_uint,12),
        ("int",ctypes.c_uint,16),
        ("reserved1",ctypes.c_uint,1)
    ]

class REG0(ctypes.Union):
    _anonymous_ = ("u",)
    _fields_ = [
        ("u",_REG0),
        ("register",ctypes.c_uint32)
    ]

def set_raw_reg(conn,id_board,channel,reg):
    d=conn.packet(struct.pack("<BBBBI",id_board,0x04,0x00,channel,reg))
    return
    
def get_muxout(conn,id_board,channel):
    d=conn.packet(struct.pack("<BBBB",id_board,0x04,0x01,channel))
    return bool(struct.unpack("<BBBB",d)[3])
       
def set_full_regs(conn,id_board,channel,freq,power=-4):

    clkin = 10e6
    R = 1
    Rdoubler = False
    Rdiv = False
    
    assert(freq > 34.375e6)
    assert(freq < 4400e6)
    
    fpfd = clkin * (2 if Rdoubler else 1) / (2 if Rdiv else 1) / R
    assert(fpfd < 32e6)
    
    vcofreq = freq
    rf_div = 0
    while vcofreq < 2200e6:
        vcofreq *=2
        rf_div += 1
       
    if vcofreq > 3600e6:
        prescaler = 1 #8/9
        mdiv = 75
    else:
        prescaler = 0 #4/5
        mdiv = 23
    
    N = vcofreq / fpfd;
    if N%1 == 0:
        intN = True
        intm = round(N)
        frac = 0
        mod = 2
    else:
        intN = False
        intm = int(N)
        _frac = fractions.Fraction(N%1).limit_denominator(4095)
        frac = _frac.numerator
        mod = _frac.denominator
    
    assert(intm >= mdiv)
    
    realfreq = (intm + frac/mod) * fpfd / 2**rf_div
    
    reg5 = REG5()
    reg5.regnum = 5
    reg5.reserved1 = 0
    reg5.reserved2 = 3
    reg5.reserved3 = 0
    reg5.ld_pin = 1 # digital lock detect
    reg5.reserved4 = 0
    set_raw_reg(conn,id_board,channel,reg5.register)
    #print(hex(reg5.register))
    #set_raw_reg(conn,id_board,channel,0x00580005)
    reg4 = REG4()
    reg4.regnum = 4
    reg4.output_power = output_power[power]
    reg4.rf_out = 1 #enabled
    reg4.aux_power = output_power[-4]
    reg4.aux_out = 0 #disabled
    reg4.aux_type = 0 #divided
    reg4.mute_unlocked = 0 #mute disabled
    reg4.vco_power = 0 # on
    reg4.band_select = math.ceil(fpfd/125e3)
    reg4.rf_div = rf_div
    reg4.feedback_select = 1 # fundamental
    reg4.reserved1 = 0
    set_raw_reg(conn,id_board,channel,reg4.register)
    #print(hex(reg4.register))
    #set_raw_reg(conn,id_board,channel,0x00950024)
    reg3 = REG3()
    reg3.regnum = 3
    reg3.clk_div = 150
    reg3.clk_div_mode = 0 # off
    reg3.reserved1 = 0
    reg3.csr = 1 # on - we have very narrow loop filter
    reg3.reserved2 = 0
    reg3.charge_cancel = 1 if intN else 0 # use if integer
    reg3.abp = 1 if intN else 0 # as definied in datasheet
    reg3.band_select_clock = 1 if fpfd > 125e3 else 0
    reg3.reserved3 = 0
    set_raw_reg(conn,id_board,channel,reg3.register)
    #print(hex(reg3.register))
    #set_raw_reg(conn,id_board,channel,0x00E404B3)
    reg2 = REG2()
    reg2.regnum = 2
    reg2.counter_reset = 0
    reg2.cp_three_state = 0
    reg2.power_down = 0
    reg2.pd_polarity = 1 # positive
    reg2.ldp = 1 if intN else 0
    reg2.ldf = 1 if intN else 0
    reg2.cp_current = 15 # 5mA
    reg2.double_buffer_r4 = 0
    reg2.r = R
    reg2.ref_div = 1 if Rdiv else 0
    reg2.ref_dbl = 1 if Rdoubler else 0
    reg2.muxout = 6 # digital lock
    reg2.low_noise_spur = 0 # low noise
    reg2.reserved1 = 0
    set_raw_reg(conn,id_board,channel,reg2.register)
    #print(hex(reg2.register))
    #set_raw_reg(conn,id_board,channel,0x18005FC2)
    reg1 = REG1()
    reg1.regnum = 1
    reg1.mod = mod
    reg1.phase = 1 # recommended
    reg1.prescaler = prescaler
    reg1.phase_adjust = 0 # off
    reg1.reserved1 = 0
    set_raw_reg(conn,id_board,channel,reg1.register)
    #print(hex(reg1.register))
    #set_raw_reg(conn,id_board,channel,0x00008011)
    reg0 = REG0()
    reg0.regnum = 0
    reg0.frac = frac
    reg0.int = intm
    reg0.reserved1 = 0
    set_raw_reg(conn,id_board,channel,reg0.register)
    #print(hex(reg0.register))
    #set_raw_reg(conn,id_board,channel,0x006e0000)

    return realfreq
    

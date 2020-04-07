#!/usr/bin/env python3

import argparse
import time
from tqdm import tqdm
parser = argparse.ArgumentParser()
parser.add_argument("-u","--usb",action="store_true")
parser.add_argument("-i", "--id", type=int, default=1)
parser.add_argument("bin")
args = parser.parse_args()

board_id = args.id

import p_ff
import p_fe

b= open(args.bin,"rb").read()
if args.usb:
    import usbconn
    c=usbconn.usb_conn()
else:
    import udpconn
    c=udpconn.udp_conn()

while p_ff.get_mode(c,board_id) !=1:
    p_ff.enter_bootloader(c,board_id)
    time.sleep(1)

page_size=p_fe.get_spmsize(c,board_id)

b=b+bytes(page_size-len(b)%page_size)

print("Flashing")
for page in tqdm(range(0,len(b),page_size)):
    p_fe.set_page(c,board_id,page)
    p_fe.erase_page(c,board_id)
    for i in range(0,page_size,26):
        l = 26
        if l+i>page_size:
            l=page_size-i
        p_fe.fill_page(c,board_id,b[page+i:page+i+l])
    p_fe.write_page(c,board_id)

v=bytes()
print("Veryfing")
for i in tqdm(range(0,len(b),26)):
    l = 26
    if l+i>len(b):
        l=len(b)-i
    v+=p_fe.get_data(c,board_id,i,l)

if b !=v:
    print("programming error")
else:
    print("programming ok")
    while p_ff.get_mode(c,board_id) !=0:
        p_ff.enter_app(c,board_id)
        time.sleep(1)


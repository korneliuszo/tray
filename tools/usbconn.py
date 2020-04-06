import usb.core
import usb.util

def is_tray0(dev):
    if  usb.util.get_string(dev, dev.iProduct) == "Tray0":
        return True

class usb_conn:
    def __init__(self):
        # find our device
        self.dev = usb.core.find(idVendor=0x03eb, idProduct=0x2040,
                custom_match= is_tray0)
        self.dev.set_configuration()
        
        cfg = self.dev.get_active_configuration()
        intf = cfg[(0,0)]

        self.epout = usb.util.find_descriptor(
            intf,
            # match the first OUT endpoint
            custom_match = \
            lambda e: \
                usb.util.endpoint_direction(e.bEndpointAddress) == \
                usb.util.ENDPOINT_OUT)
        self.epin = usb.util.find_descriptor(
            intf,
            # match the first OUT endpoint
            custom_match = \
            lambda e: \
                usb.util.endpoint_direction(e.bEndpointAddress) == \
                usb.util.ENDPOINT_IN)

    def packet_raw(self,data):
        self.epout.write(data)
        return bytes(self.epin.read(self.epin.wMaxPacketSize,timeout=1000))

    def packet(self,data):
        return self.packet_raw(b"\x00"+data)[1:]

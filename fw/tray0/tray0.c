#include "tray0.h"
#include "tlay2.h"

int main(void)
{
	SetupHardware();

	GlobalInterruptEnable();

	tlay2_init();

	for (;;)
	{
		USB_USBTask();

		{
			/* Select the data Endpoint */
			Endpoint_SelectEndpoint(TLAY2_OUT_EPADDR);

			/* Check if Keyboard LED Endpoint contains a packet */
			while (Endpoint_IsOUTReceived())
			{
				tlay2_tx_init();
				/* Check to see if the packet contains data */
				while(Endpoint_BytesInEndpoint())
				{
					uint8_t data= Endpoint_Read_8();
					tlay2_tx_byte(data);
				}
				/* Handshake the OUT Endpoint - clear endpoint and ready for next report */
				Endpoint_ClearOUT();
				tlay2_tx_end();
			}
		}
		{
			/* Select the data Endpoint */
			Endpoint_SelectEndpoint(TLAY2_IN_EPADDR);

			if(tlay2_check() && Endpoint_IsReadWriteAllowed())
			{
				Endpoint_Write_Stream_LE(tlay2_get_data(), tlay2_get_len(), NULL);
				Endpoint_ClearIN();
				tlay2_reset();
			}
		}
	}
}

/** Configures the board hardware and chip peripherals for the demo's functionality. */
void SetupHardware(void)
{
	/* Disable watchdog if enabled by bootloader/fuses */
	MCUSR &= ~(1 << WDRF);
	wdt_disable();

	/* Disable clock division */
	clock_prescale_set(clock_div_1);

	USB_Disable();

	// Wait two seconds for the USB detachment to register on the host
	Delay_MS(2000);

	/* Hardware Initialization */
	USB_Init();
}

/** Event handler for the USB_Connect event. This indicates that the device is enumerating via the status LEDs and
 *  starts the library USB task to begin the enumeration and USB management process.
 */
void EVENT_USB_Device_Connect(void)
{
	/* Indicate USB enumerating */
}

/** Event handler for the USB_Disconnect event. This indicates that the device is no longer connected to a host via
 *  the status LEDs.
 */
void EVENT_USB_Device_Disconnect(void)
{
	/* Indicate USB not ready */
}

/** Event handler for the USB_ConfigurationChanged event. This is fired when the host sets the current configuration
 *  of the USB device after enumeration, and configures the keyboard device endpoints.
 */
void EVENT_USB_Device_ConfigurationChanged(void)
{
	bool ConfigSuccess = true;

	/* Setup HID Report Endpoints */
	ConfigSuccess &= Endpoint_ConfigureEndpoint(TLAY2_OUT_EPADDR, EP_TYPE_BULK, TLAY2_EPSIZE, 2);
	ConfigSuccess &= Endpoint_ConfigureEndpoint(TLAY2_IN_EPADDR, EP_TYPE_BULK, TLAY2_EPSIZE, 2);

	/* Indicate endpoint configuration success or failure */
}

/** Event handler for the USB_ControlRequest event. This is used to catch and process control requests sent to
 *  the device from the USB host before passing along unhandled control requests to the library for processing
 *  internally.
 */
void EVENT_USB_Device_ControlRequest(void)
{
	/* Handle HID Class specific requests */
	switch (USB_ControlRequest.bRequest)
	{
		case 0:
			if (USB_ControlRequest.bmRequestType == (REQDIR_HOSTTODEVICE | REQTYPE_VENDOR | REQREC_INTERFACE))
			{

				Endpoint_ClearSETUP();
				Endpoint_ClearStatusStage();
				// If USB is used, detach from the bus and reset it
				USB_Disable();
    
				// Disable all interrupts
				cli();

				// Wait two seconds for the USB detachment to register on the host
				Delay_MS(2000);

				uint16_t bootKey = 0x7777;
				volatile uint16_t *const bootKeyPtr = (volatile uint16_t *)0x0800;
				*bootKeyPtr=bootKey;
				wdt_enable(WDTO_250MS);
				for (;;);
			}

			break;
	}
}

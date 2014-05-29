#!/bin/sh
avrdude -c stk500v2 -p m328p -P /dev/tty.usbmodem1451 -e -U lock:w:0x0f:m -U flash:w:ATmegaBOOT_168_atmega328.hex -v 
avrdude -c stk500v2 -p m328p -P /dev/tty.usbmodem1451 -U lfuse:w:0xFF:m	-U hfuse:w:0xDA:m -U efuse:w:0x05:m -B8

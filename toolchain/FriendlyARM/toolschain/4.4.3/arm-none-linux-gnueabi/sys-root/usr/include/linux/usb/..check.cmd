cmd_/opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/linux/usb/.check := for f in audio.h cdc.h ch9.h g_printer.h gadgetfs.h midi.h tmc.h vstusb.h ; do echo "/opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/linux/usb/$${f}"; done | xargs perl /opt/FriendlyARM/mini2440/build-toolschain/working/src/linux-2.6.32.2/scripts/headers_check.pl /opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include arm; touch /opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/linux/usb/.check

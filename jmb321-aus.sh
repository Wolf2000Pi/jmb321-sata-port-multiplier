#/!bin/bash

# Zum deaktivieren jmb321 sata port multiplier 
# Version 1.0
# by Wolf2000

wget https://raw.githubusercontent.com/armbian/build/master/config/bootscripts/boot-sunxi.cmd
cp bootscripts/boot-sunxi /boot/boot.cmd
rm -r boot-sunxi.cmd
mkimage -C none -A arm -T script -d /boot/boot.cmd /boot/boot.scr

# nano /boot/boot.cmd 
# Go to line that starts with  setenv bootargs  and add  ahci_sunxi.enable_pmp=1  to the end of it.
# recompile with  mkimage -C none -A arm -T script -d /boot/boot.cmd /boot/boot.scr 
# reboot 
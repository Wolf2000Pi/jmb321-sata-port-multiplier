#/!bin/bash

# Zum aktivieren jmb321 sata port multiplier 
# Version 1.0
# by Wolf2000
sed -i -e '/^setenv bootargs/s!$! "ahci_sunxi.enable_pmp=1 "!'  /boot/boot.cmd
mkimage -C none -A arm -T script -d /boot/boot.cmd /boot/boot.scr

# nano /boot/boot.cmd 
# Go to line that starts with  setenv bootargs  and add  ahci_sunxi.enable_pmp=1  to the end of it.
# recompile with  mkimage -C none -A arm -T script -d /boot/boot.cmd /boot/boot.scr 
# reboot  


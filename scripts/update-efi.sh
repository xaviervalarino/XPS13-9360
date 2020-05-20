#!/usr/bin/env bash
sudo mkdir /Volumes/EFI
sudo diskutil mount -mountPoint /Volumes/EFI /dev/disk0s1
rsync -ac --stats $HOME/hackintosh/XPS13-9360/OC/ /Volumes/EFI/EFI/OC/
# Give finder a chance to disengage
sleep 1;  
diskutil umount /dev/disk0s1

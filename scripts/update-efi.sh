#!/usr/bin/env bash
sudo mkdir /Volumes/EFI
sudo diskutil mount -mountPoint /Volumes/EFI /dev/disk0s1
rsync -au --progress $HOME/hackintosh/XPS13-9360/OC/ /Volumes/EFI/EFI/OC/
diskutil umount /dev/disk0s1

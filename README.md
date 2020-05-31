# About
Dell XPS 13" 9360 7th Gen running MacOS Mojave 10.14.6

## Specs
```
Dell XPS 13 9360 7th Gen
CPU: i7-7500U @ 2.70GHz
  Base Frequency: 2.7MHz
  Max Turbo Frequency: 3.5 GHz
  Cache: 4 MB Intel Smart Cache
  Bus Speed: 4 GT/s
  TDP: 15 W
  TDP-up Frequency: 2.9 GHz
  Configurable TDP-up: 25 W
  TDP-down Frequency 800 MHz
  Configurable TDP-down: 7.5 W
RAM: 16GB
GPU: Intel HD Graphics 620
  Base Frequency: 300MHz
  Max Resolution 4096x2304
Audio: Realtek ALC256/ALC3246
Thunderbolt: v16.3.61.275 (AO3) June 09, 2017
Wifi: fenvi Broadcom BCM94360NG
```


## DSDT names
```
iGPU: \SB.PCI0.GFX0
EC: \_SB.PCI0.LPCB.ECDV
I2C HID: \_SB.PCI0.I2C1.TPD1
```

## Pre-Install
Replace Killer Network Card with Fenvi Broadcom BCM94360NG

## Install

#### Works out of the box
- Wifi and Bluetooth seem to work fine with the Fenvi card
- 

## Post-Install
Copy OpenCore to EFI

Remove eject menu from the status bar
```bash
# Back it up, just in case
cp  /System/Library/CoreServices/Menu Extras/Eject.menu ./resources/backup
# Delete the file
# Note: SIP needs to be disabled
sudo rm -rv  /System/Library/CoreServices/Menu Extras/Eject.menu
```

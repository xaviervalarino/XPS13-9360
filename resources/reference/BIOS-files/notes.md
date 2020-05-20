# BIOS Notes
## Configure BIOS Settings
- Boot Sequence: Delete All
- Sata: AHCI
- Enable SMART Reporting
- Disable thunderbolt boot and pre-boot support
- USB security level: disable
- Enable USB powershare
- Enable Unobtrusive mode
- Disable SD Card Reader (saves 0.5W power)
- TPM off
- Deactivate Computrace
- Enable CPU XD
- Disable Secure Boot
- Disable Intedl SGX
- Disable Wake on USB-C Dell Dock
- Battery charge profile: Standard
- Numlock Enable
- FN-lock mode: Disable/Standard
- Fastboot: minimal
- BIOS POST Time: 0s
- Enable VT
- Disable VT-D
- Wireless switch OFF for Wifi and BT
- Allow BIOS Downgrade
- Allow BIOS Recovery from HD, disable Auto-recovery
- Auto OS recovery threshold: OFF
- SupportAssist OS Recovery: OFF

##  UEFI Variables
Change these variables using `modGRUBShell.efi` with the `setup_var` command
| Variable              | Offset | Value            | Comment                                             |
| ---                   | ---    | ---              | ---                                                 |
| CFG Lock              | 0x4de  | 0x00  (disabled) | Disable CFG Lock to prevent MSR 0x02 errors on boot |
| DVMT Pre-allocation   | 0x785  | 0x06  (192M)     | Increase DVMT pre-allocated to by 3*64M  (0x2)      |
| DVMT Total Gfx Memory | 0x786  | 0x03 (max)       | Increase total gfx memory limit to maximum          |

## Extracting BIOS
- Download Dell BIOS (currently 2.13.0)
- On Windows:
    - Use Universal BIOS Backup Toolkit to create a `.rom` file from BIOS
    - Using UEFITool, search for 'Setup' (found searching for GUID 899407D7-99FE-43D8-9A21-79EC328CAC21)
    - Select option 'Extract as is..' (should create `.fss` file)
    - Use Universal IFR Extractor to extract file as plain text
    - Search for BIOS variables and settings
	- DVMT
	- Gfx Mem
	- CFG Lock
	- Core Voltage Offset
	- GT Voltage Offset
	- Speed Shift Technology

# BIOS Notes
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

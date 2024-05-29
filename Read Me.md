# **Project Summary**

|Field				|Version	|Comment	|
|-------------------|-----------|-----------|
|Project			|			|			|
|Date Created 		|			|			|
|Author				|			|			|
|Last Updated		|			|			|
|Updated by			|			|			|			
|FW Version			|			|			|
|Arm Compiler		|			|			|
|C Language			|			|			|
|C++ Language		|			|			|
|CMSIS Core			|			|			|			
|Device Family Pack	|			|			|
|SDK				|			|			|
|SoftDevice			|			|			|
|J-Link				|			|Use the command** `jlink --version` **in command prompt to view current version|		


**The following details can be found after building the project and right clicking on main in the project tree, open build log**

|Field				|Version	|Comment	|
|-------------------|-----------|-----------|
|Tool Versions		|			|			|
|Toolchain      	|			|			|
|Toolchain Path		|			|			|
|C Compiler     	|			|			|
|Assembler     		|			|			|
|Linker/Locator 	|			|			|
|Library Manager	|			|			|
|Hex Converter   	|			|			|
|CPU DLL         	|			|			|
|Dialog DLL      	|			|			|
|Target DLL      	|			|			|
|Dialog DLL      	|			|			|


## **Notes**
### **General**

JLink/JTrace RAM for Algorithm
|Field		|Value				|
|-----------|-------------------|
|Address:	|	0x 2000 5968	|
|Size:		|	0x 0000 A698	|


UlinkME2 RAM for Algorithm
|Field		|Value				|
|-----------|-------------------|
|Address:	|	0x 2000 7000	|
|Size:		|	0x 0003 9000	|


ROM Allocation													
| Mode		| Optimisation Level	| IROM Address	| Size 		|
|-----------|-----------------------|---------------|-----------|
|Debugging	| -O0 					| 0xD1000		| 0xF000	|
|Deployed	| -O3 					| 0xF1000		| 0xD000	|



 - Additional compiler warnings with the prefix "ICE WARNING: <message>" have been included as functionality checks


### **BootLoader Limitations**
Currently does not support DFU Button entry mode. Vulcan Reedswitch topology change required.


### **Programming Bootloader**
Prerequisites
- nRF Util
- nRF JProg
- JLink debugger
- BLE Scanner
- Ensure the files indicated below are accessible by nRF command line utilities
	

### Generating and executing DFU Package
Refer to Technical Operating Proceedure no.15 (TOP015 - nRF OTA Device firmware Update)

Required files
- ICE_DFU_Key.pem
- ICE_Bootloader.hex may wish to rename to `<projectname>_Bootloader.hex`
		

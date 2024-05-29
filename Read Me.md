# **Project Summary**

|Field				|Version		|Comment	|
|-------------------|---------------|-----------|
|Project			|Ice Bootloader	|			|
|Date Created 		|29/05/2024		|			|
|Author				|Andrew Knowles	|			|
|Last Updated		|				|			|
|Updated by			|				|			|
|					|				|			|
|IDE				|Keil uVision 5	|			|
|Platform			|Nordic nRF52	|			|
|FW Version			|1.0			|			|
|Arm Compiler		|Default v5		|			|
|C Language			|C99			|			|
|C++ Language		|				|			|
|CMSIS Core			|4.3.0			|			|			
|Device Family Pack	|8.27.0			|			|
|SDK				|16.0.0			|			|
|SoftDevice			|S140 v7.0.1	|			|
|J-Link				|11.0.16.1		|Use the command** `jlink --version` **in command prompt to view current version|		


**The following details can be found after building the project and right clicking on main in the project tree, open build log**

|Field				|Version														|Comment	|
|-------------------|---------------------------------------------------------------|-----------|
|Tool Versions		|																|			|
|Toolchain      	|MDK Essential 5.38 (Flex): 1 user(s)  Version: 5.38.0.0		|			|
|Toolchain Path		|C:\Keil_community\Keil_v5\ARM\ARM_Compiler_5.06u7\Bin			|			|
|C Compiler     	|Armcc.exe V5.06 update 7 (build 960)							|			|
|Assembler     		|Armasm.exe V5.06 update 7 (build 960)							|			|
|Linker/Locator 	|ArmLink.exe V5.06 update 7 (build 960)							|			|
|Library Manager	|ArmAr.exe V5.06 update 7 (build 960)							|			|
|Hex Converter   	|FromElf.exe V5.06 update 7 (build 960)							|			|
|CPU DLL         	|																|			|
|Dialog DLL      	|																|			|
|Target DLL      	|Segger\JL2CM3.dll V2.99.42.0									|			|
|Dialog DLL      	|TCM.DLL V1.56.4.0												|			|


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
- ICE_Bootloader.hex may (wish to rename to `<projectname>_Bootloader.hex`)
		

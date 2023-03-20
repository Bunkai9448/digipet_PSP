# digipet_PSP

This repository contains files to reverse engineering (RE from now on) the files from the "digivice ver. portable psp" ("The game" from now on), and use that to create a patch for translating the game.

If you only want the patch go to: [Releases]([RE_Guide.md](https://github.com/Bunkai9448/digipet_PSP/releases)). 
Otherwise, go on with the readme. In addition, you have a step by step of the RE in [RE_Guide.md](RE_Guide.md).

**Warning**: Some files and/or methods of this project might be only as a proof of concept, hence they lead nowhere further on. If you don't know why something is there, it's probably that.

## Considerations

- You must provide your own game files. Do not ask here for them. 

- Digivice Ver. Portable (Japan) PSP ISO. ID: NPJH-00126
````
ISO: Digivice_Ver_Portable_JPN_PSN_PSP-PLAYASiA.iso
       CRC32:  986e0198
       SHA1:   e15cd56748525babbb402868ea3df8b44bb6a5c8
       SHA256: ae16195736eb15ba9b2b93f1af31a55401097bc8dff2edf22f304cf4abc69fbc
````

- Althought the patch has been tested for the entire game without any problem, it's provided "as is", use it at 
your own responsability.


## ISO structure to know where the located info is

````
D:.
|   UMD_DATA.BIN
|
\---PSP_GAME
    |   ICON0.PNG
    |   PARAM.SFO
    |   PIC1.PNG
    |
    +---SYSDIR
    |   |   BOOT.BIN
    |   |   EBOOT.BIN
    |   |   OPNSSMP.BIN
    |   |
    |   \---UPDATE
    |           DATA.BIN
    |           EBOOT.BIN
    |           PARAM.SFO
    |
    \---USRDIR
            FILEDATA.CPK
````

## Files & folders in this repo.

- Armips_files: ASM scripts for armips, use them to edit the text parts of the game.

- Font_Esp: Patch and table for the Spanish font. (Can be used standalone).

- Gim2png_bat: BAT scripts to automate GIM to PNG image conversions, Samples + PSD to test if the tool works properly.

- SCRIPTS_bms: BMS scripts for quickBMS, use them to unpack and repack files. Scripts are commented with explanations.

- SCRIPTS_python: To automate gim2png and png2gim (Only as Proof of Concept).

- SaveData: Use this save if you don't want to complete the game yourself.

- Syscalls: The use of this plugin avoids dealing with the sce functions and force the console system set language.

- Cheat4steps.txt  (guide with Proof Of Concept to make cheats for this or any other game).

- FAQ & Bugs.md (game FAQs & Bugs).

- LICENSE (self-explanatory).

- README.md (self-explanatory).

- RE_Guide.md (self-explanatory).

- Text_from_Images (contains the transcribed text from graphics).


## Extra Tools required

- https://www.ppsspp.org/index.html (PPSSPP emulator & debugger).

- https://www.romhacking.net/utilities/1218/ (UMDgen).

- https://www.romhacking.net/utilities/818/ (Crystal Tile 2).

- CriPackTools & Cripack maker / crifilesystem (some versions don't work and not all can be shared).

- https://github.com/Kingcom/armips (armips program).

- http://aluigi.altervista.org/quickbms.htm (quickBMS program).

- GimConv (you have to find this tool on your own).

- https://www.romhacking.net/utilities/1225/ (DecEboot to decrypt EBOOT.BIN).

- http://aluigi.org/bms/parse_exe.bms (to unpack the decrypted EBOOT.BIN and work with the text part better).

- https://www.romhacking.net/utilities/598/ (xdelta and xdeltaUI to create the patch easily).


## List of References and Documentation (in no particular order)

- https://haroohie.club/blog/2022-11-02-chokuretsu-archives/ (a RE guide for nds, helps with a few concepts).

- https://datacrystal.romhacking.net/wiki/Blaze_Union:Tutorials (mini tuto about the PPSSPP debugger).

- https://gbatemp.net/threads/psp-debugging.452408/ (more about PPSSPP debugger).

- https://gbatemp.net/threads/psp-asm-hacking-for-variable-width-font.374967/page-3

- https://forum.xentax.com/viewtopic.php?t=6313 (about GIM format, for PSP images).

- http://personal.denison.edu/~bressoud/cs281-s10/ (MIPS, PSP uses those with some custom instructions/encodings).

- https://github.com/uofw/upspd (PSP unofficial documentation repo).

- https://www.psdevwiki.com/ps3/Graphic_Image_Map_(GIM) (wiki entry about GIM files).

- https://www.psdevwiki.com/ps3/GimConv (wiki entry about GIMconv).

- https://www.vg-resource.com/thread-28180.html (tuto for making BMS scripts).

- http://gitaroopals.shoutwiki.com/wiki/PSP:Patching_the_executable_(BOOT.BIN) (info about BOOT.bin & EBOOT.bin).

- https://wiki.vg-resource.com/GMO (info about GMO files, 3d models).

- https://winmerge.org/downloads/ (helps comparing files, to get proper gim format in reinsertion).

- https://www.romhacking.net/documents/765/ (font table).

- http://psp.jim.sh/pspsdk-doc/psputility__sysparam_8h.html (sceImposeSetLanguageMode).

- http://psp.jim.sh/pspsdk-doc/psputility__msgdialog_8h.html (sceUtilityMsgDialogInitStart).

- http://psp.jim.sh/pspsdk-doc/psputility__savedata_8h.html (sceUtilitySavedataInitStart).

- https://github.com/NationalSecurityAgency/ghidra (To find sceUtilityMsgDialogInitStart, and more).

- https://github.com/kotcrab/ghidra-allegrex/blob/master/README.md (PSP's CPU module for ghidra).

- https://wololo.net/talk/viewtopic.php?f=28&t=42910&p=389277 (plugin to avoid dealing with syscalls, sce functions).

- https://github.com/kokibits/LangSwapper (source code for the plugin to avoid dealing with syscalls, sce functions).

## Author

 - Bunkai

## Special thanks

- Fothsid (first guidance about the headers)

- Mugi (guidance about file structure and some scripts; Info, Data and guidance for System Messages)

- Ethanol (guidance about Font, GIM, Gimconv config snippet and help fixing extract/insert mistakes)

- kokibits (this project uses their PSP plugin for the syscalls)

- 前田太尊 (maeda taison) (betatester)

- All the authors of the tools and documents used in this project.

## License

 - Creative Commons

 - All the code and builds are free to use, modify and distribute. But you must give credit when it's due.

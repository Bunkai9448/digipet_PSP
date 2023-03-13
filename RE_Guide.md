# RE_Guide

This file is basically a cleaned-up version of:  
https://www.romhacking.net/forum/index.php?topic=35699.msg437896#msg437896  
*If you want more details about how or why something was done, go there.*

- To make the document cleaner, links to the used tools are listed in the [README.md](README.md)

## INDEX 
- [First Steps](#First-Steps)
- [Working with the CPK file](#Working-with-the-CPK-file)
- [Text File](#Text-File)
- [More unpackaging inside the CPK](#More-unpackaging-inside-the-CPK)
- [Images and GIM files](#Images-and-GIM-files)
- [Remaining text in the Eboot](#Remaining-text-in-the-Eboot)
- [The Font](#The-Font)
- [Repackaging the CPK](#Repackaging-the-CPK)
- [System Messages](#System-Messages) 
- [Last Steps](#Last-Steps)
- [Extra: Making the patch](#Making-the-patch)
- [Appendix: Data Location Summary](#Data-Location-Summary)


## First Steps

- Open your ISO and extract your files with umdgen.
![UMDGen V.4](https://imgur.com/bZgTET9.png)

- Now with astrogrep, look for a word used in the game, はじめから
As you see, it will throw results in the FILEDATA.CPK, tinkering with that file will be your next step.
*Mind you, there are a lot of text in the EBOOT file which is encrypted, those words won't appear here. 
That part will be explained later in the guide*
![Astrogrep](https://imgur.com/RCyQVqe.png)


## Working with the CPK file

- In the previous section you were leaded to the FILEDATA.CPK, now it's time to get your hands dirty on it.
*This guide will use Crystal Tile 2 for the hex part, but you can use any other editor if you feel more confortable.*
When you open the FILEDATA.CPK with your text editor, you notice it has more than just the text. That is because the
file is a package of files, and you want to unpackage those files next.

- Use CriPackedFileMaker to get the files inside your CPK.
![CriPackedFileMaker](https://imgur.com/GcipI9C.png)

- This time, you can either go one by one checking what's inside, or use Astrogrep again to find the text you want 
to edit. In any case, you'll end up in file ID00033.
![CriPackedFileMaker](https://imgur.com/7xk7WMG.png)


## Text File

- There are several ways to approach this section, and this guide uses one which relies one brute force. 
If you want to go and find any other guide for dumping and reinserting the text, feel free.

- Basically you need to understand how the file and header work using the hex editor, then create a code with 
armips that replicates the file. Go to the Armips_files folder in this repo to use this guide's scripts. 
*If you want to create a 1:1 file to double-check; edit the script back with the original pointers and japanese text.* 


## More unpackaging inside the CPK

- It's time to look for the images and sprites in the game. To do that, you want to search in the other files of 
the ISO. In this guide the ID00000 file will be used as example, but the idea is the same for all of them.

- The current approach is the same you used for the text script, you use the hex editor to understand how the file and
header work and then put that knowledge into a code for the packaging/unpackaging tool.
![ID00000](https://imgur.com/xLBbtRo.png)

- From the header of this file, you can learn:  
````
The file starts with the 24 bit header  
(File format / several bits that for some reason are the same in most or all games -0x01000 0x01000 0x01000 0x04000- / Number of files in package).  
Followed by a table of contents with all the GIM files in it listed, all elements have the same structure here  
( filesize -0xE020- / start address -0xD821- / header of the actual file -0x47494D- )  
After the table of contents come the packaged files, GIM images in this cases. 
```` 

- If you want to use the scripts from this guide, go to SCRIPTS_bms.  
*With this method the same script works for packaging and unpackaging*


## Images and GIM files

- After unpackaging the files from the previous section, you have a lot of GIM files. Those are image files in PSP
propietary format. It's time to work with them.

- You could have been lucky if Gimconv made the full conversion from GIM to PNG and back to GIM with default config.
 and commands. However for this game that's not how it went, so the next step is again opening your hex editor and 
 looking at the header to see your image properties. In addition, you want to make a sanity check and get an 
 "output.GIM" equal to "input.GIM". As a result, you will have edited your Gimconv configuration and executed the 
 command with a new created option:
````
option -digi {
    image_format = index4
    palette_format = rgba4444
    format_style = psp
    format_endian = little
    output_image = on
    output_palette = on
    output_sequence = on
    check_limit = off
}
  
gimconv "input.GIM" -o "output.GIM" -digi 
````

- Once you have the loseless GIM to GIM conversion you can start working with a PNG transformation in the middle.
*The remaining part of the section is also copied down 'as is' into GIM_RE.bat for easy trial.*

- Based on the post by akadewboy on Fri Apr 01, 2011 9:11 pm  
in https://forum.xentax.com/viewtopic.php?t=6313  
With snipped code to add -digi option in GimConv.cfg file, by "ethanol"

1. Convert it to PNG using GimConv  
gimconv "GIM_000000bd.GIM" -o "GIM_000000bd.PNG" -digi  
  
2. Edit GIM_000000bd.PNG with whatever graphic program you want.  
Work with PNG in 32bit PNG, save it as Indexed and run it through https://tinypng.com/  
*Use the PSDs files with the default options if you have problems with colors after insertion*
  
3. Use GimConv to convert GIM_000000bd.PNG into a GIM  
gimconv "GIM_000000bd.PNG" -o "Edited_GIM_000000bd.GIM" -digi


## Remaining text in the Eboot

- There is still text missing and, from previous steps, apparently nothing useful for that in FILEDATA.CPK, BOOT.BIN, or OPNSSMP.BIN. The last chance of something easy is to find it in the unencrypted version of EBOOT.BIN. Hence you
want to decrypt it and see its content, luckyly DecEboot can deal with the compression part. When you do that and open it with your hex editor ...  ¡Jackpot! You found the remaining text:
![Deceboot](https://imgur.com/S3CZJmz.png)

- To make the edits easier, you can unpack the eboot with the script parse_exe.bms for quickbms and have the text part 
separated. That was done in this guide, the file with the text is: 000f5e90_000f5f50_00012768_

- In some cases the EBOOT needs to be re-encrypted for the game to work, you got lucky again because for this game 
the EBOOT can be reimported unencrypted. 

- Now you can go back to [Text File](#Text-File) and do the same thing for the remaining part of the section.  
*In this guide we only worked with the text block, leaving most of the file untouched to avoid any crashing.
In that sense, we don't have to work with the header or any different address block here.*


## The Font

- You eventually have most files analysed, leaving GMO files (PSP 3d model format) and code aside. 
The font must be in the remaining ID00029 file. Time to open it with your text editor and find out.  

- PSP usually puts fonts in 4BPP format, you'll want to try that before scrolling. Once you have found the characters, 
if they are uncompressed (like in this digivice game) the only thing to do is discovering the actual size of the
tiles. 

- This font parameters are:
````
BGA 4bpp "tiled" with 16x16 tiles
````

- And the font looks like:
![Font](https://imgur.com/MT729WV.png)

- Now it's time to edit the file to add the characters you want. Example:
![Font Changes](https://imgur.com/IxWZh74.png)

- To end this task, do not forget to modify your table file accordingly.  
*You won't be able of use the new characters properly otherwise*  
![Table Changes](https://imgur.com/CjXA0uX.png)


## Repackaging the CPK

- Remember the first step of this guide? You used CriPackedFileMaker to get the files inside your CPK. 
Well, this is the following up step. Same tool, different task. Time to rebuild the FILEDATA.CPK

- Before rebuilding, it's required to get the CPK original info. *To create one with the same parameters later.*
![Get file info](https://imgur.com/g3bJOqD.png)

- Then, you can do a repackaging without edits as a sanity check. 
````
Data alignment: 2048 ; File Mode: ID ; any other box unmarked. 
````
![Use that file info](https://imgur.com/gSPAfqK.png)

- If you did everything right, you'll have your "complete" prompt. 


## System Messages 

![System Messages example](https://imgur.com/7jnmTTi.png)

Before going into this step, you should know that: 
*sceImposeSetLanguageMode* is what opens when you press the PSP button, *sceUtilitySavedataInitStart* is the save/load
module, and *sceUtilityMsgDialogInitStart* is generic messages that open using the system overlay.

- Depuracion > desensamblador (ctrl+D), see image:
![Open Debug](https://imgur.com/fVc6xTi.png)

- Go to the left panel and select Func(tions), see image:
![Select Func(tions)](https://imgur.com/Rwz8s6X.png)

- In that panel, find the 3 functions that deal with system messages:
  sceImposeSetLanguageMode(), sceUtilityMsgDialogInitStart(), and sceUtilitySavedataInitStart().

- Set a break point in the call you want to change, see image:
![Toggle Breakpoint](https://imgur.com/M1bYqYv.png)

- Minimize the debugger window or move it aside and open a system menu in the emulator 
  (For example, with sceUtilitySavedataInitStart(), click "continue" at the main screen).

- The emulator will freeze in this step. Don't worry, it just means the breakpoint has been reached. This is the 
address to copy for the define part in armips. 

- Now, we need to see what were the parameters passed to the subroutine (which is the actual code we need to patch). 
The stack frames are in charge of that task in the code.

- Once it breaks (freezes), go to the stack frames tab at the bottom, see image:
![Stack Frames](https://imgur.com/ocsly9v.png)

- In the stack frames, double click in the second row. It will show us the code that leads to 
sceUtilitySavedataInitStart(). This is the address to copy for the edit part in armips.
![Code we wanted](https://imgur.com/sp6A83G.png)

### Ghidra

*You can use ghidra to find the sceImposeSetLanguageMode, and to double-check any of the previous addresses*

- Now open ghidra, if it's the first time you'll get welcome with gh_00
In Ghidra go to File > New Project (ctrl+n)

- Select shared or Non shared project. Then click next and choose your working directory (For
this guide will use a folder called PSP_Ghidra). Don't forget to give a name to your project,
we'll call it Digivice for this guide. If you did it properly, you'll see something like gh_01

- Go to Usage in allegrex https://github.com/kotcrab/ghidra-allegrex/blob/master/README.md and
do as told (intructions will be copied here to make everything compact with images): 
Drag decrypted EBOOT in ELF/PRX format into Ghidra. It should get automatically 
detected as PSP Executable (ELF) / Allegrex. image gh_02

- Continuing with allegrex steps. Now is your chance to set initial base address 
by clicking Options... and changing Image Base. Set it to 08804000 to match 
the usual address where games are loaded. image gh_03

- Click Ok to import the file. Then you'll see the elf info, image gh_04

- After importing and opening the file you should do the auto analysis. Default options are fine.
image gh_05 & image gh_06

- PPSSPP identifies many functions automatically, it's useful to get those into Ghidra after doing the 
initial analysis. Export the .sym file from PPSSPP and in Ghidra run script PpssppImportSymFile with
language allegrex (use "0" for the base address)

- With all the previous steps in ghidra done, you can see the functions and code like you do in PPSSPP. The moment 
for finding the addresses has come. Just click the syscall (sce...) from the list in ghidra and it will take you to
the address.

### Subsequent to ghidra

*In addition to the function address, you need the base address for the armips script.* 

- The base address is obtained with the formula: 8804000 - header  
From a quick hex view of the EBOOT.BIN you can see where the header ends and the elf (actual executable) starts. 
See image ![ELF Header](https://imgur.com/zZAqNF4.png)
Which, for this digivice, means:
```
Base Address = 8804000 - header = 8804000 - C0

Base Address = 8803F40

```

- With all the addresses, it's time to do the script to patch the EBOOT.BIN
*You should always work by decrypting eboot.bin.
If boot.bin and eboot.bin are both present, they are identical (assuming you have decrypted eboot).
Although PSP custom firmwares can use boot.bin to boot, in most retail games is just full of zeroes. 
The only exception is games where the boot.bin is fully present and contains debug symbols, in those 
cases you delete eboot.bin and rename boot.bin to eboot.bin to work with it.* 

- Let's tart with defines & sceImposeSetLanguageMode

```
; psp elfs are always loaded to 8804000
;so when you write your armips file, you open the elf with that in mind

.psp
.open "EBOOT.BIN", 0x08803F40 ; as such it excludes header

; Uncommonly, this elf basically treats everything inside the header as start relative not ram absolute
; hence we need to substract the base to each function define address to use the right one.
BASE                         equ 0x08804000
sceImposeSetLanguageMode     equ 0x088F96E4 - BASE
sceUtilityMsgDialogInitStart equ 0x088F9724 - BASE
sceUtilitySavedataInitStart  equ 0x088F972C - BASE

; ----- patch Impose language
.org 0x0883DA60
    addiu a0, zero, 0x03 ; set your language id (0x03 for spanish)
    jal sceImposeSetLanguageMode
    addiu a1, zero, 0x00 ; set button to confirm/cancel (O to confirm = 0x0 , O to cancel = 0x1)

.close
```

- Following with sceUtilityMsgDialogInitStart

```
; This are the references that we need to patch
;  FUN_0880e384:0880e40c(c), FUN_0880e450:0880e4f8(c), FUN_0880e53c:0880e598(c), 
;  FUN_08813900:0881396c(c), FUN_08813a64:08813af0(c)  

; But this functions receive a full struct as a parameter so... What do we need to patch?

; Using the first function as example:
;  FUN_0880e384:0880e40c(c)

; Where's/what's the actual parameter we need to change?
; If we look carefully, it's the zero from the instruction "sw   reg,Address" & "sb   reg,Address"
; Everything else seems part of the strings for the printable message

0880e408 3b 02 20 a2     sb         zero,0x23b(s1) =>DAT_08915857
0880e40c c9 e5 23 0e     jal        zz_sceUtilityMsgDialogInitStart

; As a double-check I watched another function
;  FUN_0880e384:0880e40c(c)

08813968 34 00 40 ae     sw         zero,0x34(s2) =>DAT_0891bd4c
0881396c c9 e5 23 0e     jal        zz_sceUtilityMsgDialogInitStart
```

- Afterwards comes sceUtilitySavedataInitStart

- To finish this section, run your armips code.


## Last Steps

*This section is for completionist sake.*
- As you might guessed, you need to redo your ISO file to play. Use UMDGen and overwrite the old files with 
the new edited ones. Enjoy your modified game!

## Making the patch

- When you want to share your modification with the world without sharing the full ISO, you better create a patch.
This section is to teach you how to do so. *Don't be afraid, this is one of the easiest parts*
*The creator of this paper put all the needed files in a folder to make it quick and easy to show, it also avoid any
mistakes at chosing the wrong file. However you can have them anywhere you want.*  

- There are many patch creators out there, this guide uses xdeltaUI. Now gather the following files:
````
Digidemo.iso: Your modified ISO game.
Digivice_Ver_Portable_JPN_PSN_PSP-PLAYASiA.iso: The original ISO game.
xdelta.exe: The patcher.
xdeltaUI.exe: A tool to use the patcher with a GUI to make it more user friendly.
````

- Open(double-click on) xdeltaUI.exe and go to the Create Patch section. 

- Fill the blankets by clicking in each button or writing the file routes. You'll have something like this:
![Feeding the info into the patcher](https://imgur.com/t76mUXK.png)


- Click on the "patch" button, wait a few seconds and a window will appear to tell you everything went well. 
You have successfully created your patch!

## Data Location Summary

| File (route) | Data in File | handling (read this guide's section)
|:---:|:---:|:---:|
| ID00000 (cpk)  | digi_lcd gim_images | [Images and GIM files](#Images-and-GIM-files)
| ID00014 (cpk) | loading_icon gim_image | [Images and GIM files](#Images-and-GIM-files)
| ID00015 (cpk) | title_screen gim_images | [Images and GIM files](#Images-and-GIM-files)
| ID00018 (cpk) | game_intro gim_images | [Images and GIM files](#Images-and-GIM-files)
| ID00026 (cpk) | new_data icon_png | No section, just add the extension ".png"
| ID00027 (cpk) | saved_data icon_png | No section, just add the extension ".png"
| ID00028 (cpk) | background_png | No section, just add the extension ".png"
| ID00029 (cpk) | font_file | [The Font](#The-Font)
| ID00033 (cpk) |  starting menus & a few extra prompts txt | [Text File](#Text-File)
|---|---|---|
| (EBOOT.bin) | all remainig text, commands, and prompts | [Remaining text in the Eboot](#Remaining-text-in-the-Eboot), [System Messages](#System-Messages)


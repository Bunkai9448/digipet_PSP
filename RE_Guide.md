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

- Now with astrogrep, look for a word used in the game, here はじめから it's used.
In this case, it throws results in the FILEDATA.CPK, which means, tinkering with that file will be the next step.
*Mind you, there are a lot of text in the EBOOT file which is encrypted, those words won't appear here, that part will be explained later in the guide*
![Astrogrep](https://imgur.com/RCyQVqe.png)


## Working with the CPK file

- In the previous section you were leaded to the FILEDATA.CPK, now it's time to get your hands dirty on it.
*This guide will use Crystal Tile 2 for the hex part, but you can use any other editor if you feel more confortable.*
When you open the FILEDATA.CPK with your text editor, you'll notice it has more than just text. That is because the
file is a package of files, which you want to unpack.

- Use CriPackedFileMaker to get the files inside your CPK.
![CriPackedFileMaker](https://imgur.com/GcipI9C.png)

- This time, you can either go one by one checking what's inside, or use Astrogrep again to find the text you want 
to edit. In any case, you'll end up in file: ID00033.
![CriPackedFileMaker](https://imgur.com/7xk7WMG.png)


## Text File

- There are several ways to approach this section, this guide uses one which relies on brute force. 
If you want to go and find any other guide for dumping and reinserting the text, feel free.
*In this project, text uses s-jis but you'd need a table file if you don't see the text properly*

- Basically you have to understand how the file and header work, using a hex editor. Then, with that info, you create a code with 
armips to create a replica of the file. The Armips_files folder in this repo contains this section's scripts. 
*If you want to create a 1:1 file to double-check; edit the script with the original pointers and japanese text.* 


## More unpackaging inside the CPK

- It's time to look for the images and sprites in the game. To do that, you want to search in the other files of 
the ISO. In this guide the ID00000 file will be used as example, but the idea is the same for all of them.

- The current approach is the same you used for the text script, you use the hex editor to understand how the file and
header work. Put that knowledge into a code for packaging/unpackaging.
![ID00000](https://imgur.com/xLBbtRo.png)

- From the header of this file, you can learn:  
````
The file starts with the 24 bit header  
(File format / several bits that for some reason are the same in most or all games -0x01000 0x01000 0x01000 0x04000- / Number of files in package).  
Followed by a table of contents with all the GIM files in it listed, all elements have the same structure here  
( filesize -0xE020- / start address -0xD821- / header of the actual file -0x47494D- )  
After the table of contents comes the packaged files, GIM images in this cases. 
```` 

- If you want to use the scripts from this guide, go to SCRIPTS_bms and use quickBMS with the scripts in that folder.  
*In this method the same script works for packaging and unpackaging.*


## Images and GIM files

- After unpackaging the files from the previous section, you'll have a lot of GIM files. Those are image files in PSP's
propietary format. It's time to work with them.

- You could have been lucky if Gimconv made the full conversion (from GIM to PNG, and back to GIM) with default configuration
 and commands. However for this game that's not how it went, that leads you again to open your hex editor and 
 look at the header to see your image properties. In addition, you want to make a sanity check and get an 
 "output.GIM" equal to "input.GIM". In this example: edit Gimconv configuration, and execute the 
 command with the new created option:
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
*The remaining part of the section is also copied down 'as is' into Gim2png_bat/GIM_RE.bat for easy trial.*

- Based on the post by akadewboy on Fri Apr 01, 2011 9:11 pm  
in https://forum.xentax.com/viewtopic.php?t=6313  
With snipped code to add -digi option in GimConv.cfg file, by ethanol.

1. Convert it to PNG using GimConv.  
gimconv "GIM_000000bd.GIM" -o "GIM_000000bd.PNG" -digi  
  
2. Edit GIM_000000bd.PNG with whatever graphic program you want.  
Work with PNG in 16/32bit PNG, save it as Indexed and run it through https://tinypng.com/  
*For this project, you can use the PSDs files with the default options if you have problems with colors after insertion.*
  
3. Use GimConv to convert GIM_000000bd.PNG into a GIM. 
gimconv "GIM_000000bd.PNG" -o "Edited_GIM_000000bd.GIM" -digi


## Remaining text in the Eboot

- There is still text missing and, from previous steps, apparently nothing useful for that in FILEDATA.CPK, BOOT.BIN, or OPNSSMP.BIN. The last chance of something easy is to find it in the unencrypted version of EBOOT.BIN. Hence you
want to decrypt it to see its content, luckyly DecEboot can deal with that part. Use DecEboot to get the decrypted file, then use a hex editor to see the inners of that file...  ¡Jackpot! You found the remaining text:
![Deceboot](https://imgur.com/S3CZJmz.png)

- To make the edits easier, you can also unpack the sections in the eboot with the script parse_exe.bms for quickbms. That was done in this guide, the file with the text is: "000f5e90_000f5f50_00012768_".

- In some rare cases, the EBOOT needs to be re-encrypted for the game to work. Lucky you, for this game, 
the EBOOT can be reimported unencrypted. 

- Now you can go back to [Text File](#Text-File) and do the same thing for the remaining part of the section.  
*To avoid dealing with random crashes, this repo didn't change any EBOOT text pointers.
In that sense, you don't have to worry about the header or any different address block here.*


## The Font

- You eventually have most files analysed, leaving GMO files (PSP 3d model format) and code aside. 
The font must be in the remaining ID00029 file. Time to open it with your hex editor and find out.  

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
*You won't be able to use the new characters properly otherwise.*  
![Table Changes](https://imgur.com/CjXA0uX.png)


## Repackaging the CPK

- Remember the second step of this guide? You used CriPackedFileMaker to get the files from inside your CPK. 
This is the opposite task, with the same tool.

- Before rebuilding/repackaging, you want to get the CPK original info. *To create one with the same parameters later.*
![Get file info](https://imgur.com/g3bJOqD.png)

- You can do a repackage without edits as a sanity check. For this game:
````
Data alignment: 2048 ; File Mode: ID ; any other box unmarked. 
````
![Use that file info](https://imgur.com/gSPAfqK.png)

- If you did everything right, you'll have your "complete" prompt. 


## System Messages 
![System Messages example](https://imgur.com/3fzRibF.png)

Before going into this step, you should know: 
*sceImposeSetLanguageMode* is what opens when you press the PSP button.  
*sceUtilitySavedataInitStart* is the save/load module.  
*sceUtilityMsgDialogInitStart* is generic messages that open using the system overlay.

- There are two ways of dealing with the system calls (used to print messages with system code): 
Using a PSP plugin, or modifying the ELF/BIN file.  

- In this project will be using the PSP pluging to make our work easier, but the basics of the 
other deprecated method is explain below, to those interested in learning about it.*  
  
If you want the quick easy method, use only the [PSP plugin](##PSP-plugin) subsection. 

### PSP plugin

More details at: 
https://github.com/Bunkai9448/digipet_PSP/blob/main/Syscalls/README.md

#### Disclaimer 

The original and only author of this plugin is kokibits ( https://github.com/kokibits/ ).

- You can learn more about the plugin in:  
https://wololo.net/talk/viewtopic.php?f=28&t=42910&p=389277  
https://github.com/kokibits/LangSwapper

- For those who haven't used a plugin for PSP before, here's how you make it work:  
https://gbatemp.net/threads/adrenaline-how-to-used-plugins.449509/#post-6855326  
*Explanations are for PS Vita's Adrenaline, but for a normal PSP just do the same in your PSP root folder (ms0:)*

- The text will now be copied and pasted here for quick use:  

```
Put the plugin in 'ux0:/pspemu/seplugins/'

Create a 'game.txt' file and write in it 'ms0:/seplugins/plugin_name.prx 1'

And put the game.txt inside the 'ux0:/pspemu/seplugins/' folder.
```
In our case, the folder would end like this:
```
ux0:/pspemu/seplugins/
 game.txt
 LangSwapper.prx
```
If you need visual aid, check the image below:
![Visual Aid Image](https://imgur.com/pxDgjyB.png)

- Don't forget to write this in your "game.txt", you can copy paste.
```
ms0:/seplugins/LangSwapper.prx 1
```

- With that we have taken care of all the syscalls required for our translation: 
sceImposeSetLanguageMode(), sceUtilityDialogInitStart() and sceUtilitySavedataInitStart().


*The following subsections show how to find them should you want to patch 
them in the game binaries instead. If you want to jump to the next step,
go to [Last Steps](#Last-Steps).*

### PPSSPP debugger

- Go to Debugger > Disassembly (ctrl+D), see image:
![Open Debug](https://imgur.com/fVc6xTi.png)

- In the opened window, go to the left panel and select Func(tions), see image:
![Select Func(tions)](https://imgur.com/Rwz8s6X.png)

- Now, find the 3 functions that deal with system messages:
  sceImposeSetLanguageMode(), sceUtilityMsgDialogInitStart(), and sceUtilitySavedataInitStart().

- Set a breakpoint in the call you want to change, to find the code that makes use of it, see image:
![Toggle Breakpoint](https://imgur.com/M1bYqYv.png)

- Minimize the debugger window or move it aside and open a system menu in the emulator 
  (For example, with sceUtilitySavedataInitStart(), click "continue" at the in-game main screen).

- The emulator will freeze in this step. Don't worry, it just means the breakpoint has been reached. This is the 
address to copy for the define part in armips. 

- Now, we need to see what were the parameters passed to the subroutine (which is the actual code we need to patch). 
The stack frames are in charge of that task in the code.

- To do that, go to the stack frames tab at the bottom of the window where you put the breakpoint, see image:
![Stack Frames](https://imgur.com/ocsly9v.png)

- In the stack frames, you'll see now the sce call instruction and the following instructions, double click in the second row. It will show us the code where the actual
sceUtilitySavedataInitStart() is. There you have the address to copy for the edit part in armips.
![Code we wanted](https://imgur.com/sp6A83G.png)

### Ghidra

*This will explain how to use ghidra to find any of the previous addresses*
*You might want to have this near: https://ghidra-sre.org/CheatSheet.html*

- Now open ghidra, if it's the first time you'll get welcome with  
![Opening Ghidra](https://imgur.com/fqo4nTK.png)
Go to File > New Project (ctrl+n).

- Select shared or Non shared project. Then click next and choose your working directory (this 
guide will use a folder called PSP_Ghidra). Don't forget to give a name to your project,
Digivice for this guide. If you did it properly, you'll see something like this:  
![New project](https://imgur.com/pBbcztG.png)

- Go to Usage in allegrex https://github.com/kotcrab/ghidra-allegrex/blob/master/README.md and
do as told (intructions will be copied here to make everything compact with images). 

- Drag the decrypted EBOOT in ELF/PRX/BIN format into Ghidra. It should get automatically 
detected as PSP Executable (ELF) / Allegrex.  
![Format autodetected](https://imgur.com/TmQyfW4.png)

- Now is your chance to set the file initial base address (this is the BIN address in execution time). 
Do it clicking Options and changing the value at ImageBase. Set it to 08804000 to match the usual base address where games are loaded 
(it could be different in others, you'll see that looking at the defines in PPSSPP debugger or after reading some calls in the code).  
![Base Address](https://imgur.com/Qovddse.png)

- Click Ok to import the file. Then you'll see "Import Results Info" in a prompt, click OK.

- After importing and opening the file you should do the auto analysis. Default options are fine.

- Besides, PPSSPP identifies many functions automatically, it's useful to get those into Ghidra after doing the initial 
analysis. Export the .sym file from PPSSPP (click on debugger > export .sym).  
![Save Sym File](https://imgur.com/9xblB8p.png) 

- To use that Sym File in Ghidra, go to the "Display Script Manager" button and double-click on it.  
![Display Script Manager](https://imgur.com/IMRGn0i.png) 

- Now you can import your Sym File with the script PpssppImportSymFile with language allegrex (use "0" for the base
 address if you defined the BIN baseAddress, otherwise, you'll have to use that here).  
 ![PpssppImportSymFile Script](https://imgur.com/3EQZM0C.png) 

- With all the previous steps in ghidra done, you can see the functions and code like you do in PPSSPP. The moment 
for finding the addresses has come. Just click the syscall (sce...) from the list in ghidra and it will take you to
the address. For those who need the tip, finding functions and code is similar to the PPSSPP subsection, but with a 
static (without running the game) approach.

### Subsequent to ghidra/PPSSPP

*In addition to the function address, you need the base address for the armips script.* 

- The base address is obtained with the formula: original BIN baseAddress (0x8804000) - header size.
From a quick hex view of the EBOOT.BIN you can see where the header ends and the elf (actual executable) starts. 
See image ![ELF Header](https://imgur.com/zZAqNF4.png)
Which, you can use to get the arguments for the above formula, for this digivice, means:
```
Base Address = 0x8804000 - header = 0x8804000 - 0xC0

Base Address = 0x8803F40

```

- With all the addresses, it's time to do the script to patch the EBOOT.BIN
*You should always work with the decrypted eboot.bin.
If boot.bin and eboot.bin are both present, they are identical (assuming you have a decrypted eboot).
Although PSP custom firmwares can use boot.bin to boot, in most retail games is just full of zeroes. 
The only exception is games where the boot.bin is fully present and contains debug symbols, in those 
cases you delete eboot.bin and rename boot.bin to eboot.bin to work with it.* 

- Let's tart with defines & sceImposeSetLanguageMode (the easiest of them)

```
; psp elfs are almost always loaded to 8804000
;so when you write your armips file, you open the elf with that in mind

.psp
.open "EBOOT.BIN", 0x08803F40 ; as such it excludes header

; Uncommonly, this elf basically treats everything inside the header as start relative not ram absolute
; hence we need to substract the base to each function define address to use the right one.
sceImposeSetLanguageMode     equ 0x088F96E4 - 0x08804000
sceUtilityMsgDialogInitStart equ 0x088F9724 - 0x08804000
sceUtilitySavedataInitStart  equ 0x088F972C - 0x08804000

; ----- patch Impose language
.org 0x0883DA60
    addiu a0, zero, 0x03 ; set your language id (0x03 for spanish)
    jal sceImposeSetLanguageMode
    addiu a1, zero, 0x00 ; set button to confirm/cancel (O to confirm = 0x0 , O to cancel = 0x1)

.close
```

- Do the same for sceUtilityMsgDialogInitStart, and sceUtilitySavedataInitStart.

- Once you've done all the changes to the code run your armips script.


## Last Steps

*This section is just for completionist sake.*
- As you might guessed, you need to rebuild your ISO file to play. Use UMDGen to overwrite the old files with 
the new, edited, ones. Enjoy your modified game!

## Making the patch

- To share your modification with the world without sharing the full ISO, you better create a patch. 
This section is to teach you how to do so.  

*For this explanation, all the needed files are in the same folder to make it quick and easy to show, it also avoid any
mistakes at chosing the wrong file. However you can have them anywhere you want.*  

- There are many patch creator tools out there, this guide uses xdeltaUI. Now gather the following files:
````
Digidemo.iso: Your modified ISO game.
Digivice_Ver_Portable_JPN_PSN_PSP-PLAYASiA.iso: The original ISO game.
xdelta.exe: The patcher.
xdeltaUI.exe: A tool to use the patcher with a GUI to make it more user friendly.
````

- Open(double-click on) xdeltaUI.exe and go to the Create Patch section. 

- Fill the blankets by writing the file's route or clicking the buttons at their right. You'll have something like this:
![Feeding the info into the patcher](https://imgur.com/t76mUXK.png)

- Click on the "patch" button and wait a few seconds. A window will appear to tell you everything went well. 
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


# RE_Guide

This file is basically a cleaned-up version of:  
https://www.romhacking.net/forum/index.php?topic=35699.msg437896#msg437896  
*If you want more details about how or why something was done, go there.*

## INDEX 
- [First Steps](#First-Steps)
- [Working with the CPK file](#Working-with-the-CPK-file)
- [Text File](#Text-File)
- [More unpackaging inside the CPK](#More-unpackaging-inside-the-CPK) - ToDo
- [Images and GIM files](#Images-and-GIM-files) - ToDo
- [Remaining text in the Eboot.bin](#Remaining-text-in-the-Eboot.bin) - ToDo
- [The Font](#The-Font) - ToDo
- [Repackaging the CPK](#Repackaging-the-CPK) - ToDo
- [Making the patch](#Making-the-patch) - ToDo
- [Data Location summary](#Data-Location-summary)


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
*You'll see 2 options for this: one can create a 1:1 file; the other has edits for the translation, including 
the use of a new font table*


## More unpackaging inside the CPK

- It's time to look for the images and sprites in the game. To do that, you want to search in the other files of 
the ISO. In this guide the ID00000 file will be used as example, but the idea is the same for all of them.

- The current approach is the same you used for the text script, you use the hex editor to understand how the file and
header work and then put that knowledge into a code for the packaging/unpackaging tool.
![ID00000](https://imgur.com/xLBbtRo.png)

- From the header of this file, you can learn:  
The file starts with the 24 bit header (File format / several bits that for some reason are the same in most or all
games -0x01000 0x01000 0x01000 0x04000- / Number of files in package).  
Followed by a table of contents with all the GIM files in it listed, all elements have the same structure here 
( filesize -0xE020- / start address -0xD821- / header of the actual file -0x47494D- )  
After the table of contents come the packaged files, GIM images in this cases.  

- If you want to use the scripts from this guide, go to SCRIPTS_bms.  
*With this method the same script works for packaging and unpackaging*

## Images and GIM files

## Remaining text in the Eboot.bin

## The Font

##Repackaging the CPK

## Making the patch

## Data Location summary

| File (route) | Data in File | handling (read this guide's section)
|---|---|---|
| 1.bin (cpk)  | digi_lcd gim_images |
| 14.bin (cpk) | loading_icon gim_image |
| 16.bin (cpk) | title_screen gim_images | 
| 18.bin (cpk) | game_intro gim_images |
| 25.bin (cpk) | saved_data icon_png |
| 26.bin (cpk) | new_save icon_png |
| 27.bin (cpk) | background_png |
| 29.bin (cpk) | font_file |
| 34.bin (cpk) |  starting menus & a few extra prompts txt |
|---|---|---|
| (EBOOT.bin) | all remainig text, commands, and prompts |




# RE_Guide

This file is basically a cleaned-up version of:  
https://www.romhacking.net/forum/index.php?topic=35699.msg437896#msg437896  
*If you want more details about how or why something was done, go there.*

## INDEX 
- [First Steps](#First-Steps)
- [Working with the CPK file](#Working-with-the-CPK-file)
- [Text File](#Text-File)
- [More unpackaging inside the CPK](#More-unpackaging-inside-the-CPK)
- [Images and GIM files](#Images-and-GIM-files)
- [Remaining text in the Eboot](#Remaining-text-in-the-Eboot)
- [The Font](#The-Font)
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
With snipped code to add -digi option in GimConv.cfg file, by "mono21400" also known as "ethanol"

1. Convert it to PNG using GimConv  
gimconv "GIM_000000bd.GIM" -o "GIM_000000bd.PNG" -digi  
  
2. Edit GIM_000000bd.PNG with whatever graphic program you want.  
Work with PNG in 32bit PNG, save it as Indexed and run it through https://tinypng.com/  
  
3. Use GimConv to convert GIM_000000bd.PNG into a GIM  
gimconv "GIM_000000bd.PNG" -o "Edited_GIM_000000bd.GIM" -digi


## Remaining text in the Eboot

- There is still text missing and, from previous steps, apparently nothing useful for that in FILEDATA.CPK, BOOT.BIN, or OPNSSMP.BIN. The last chance of something easy is to find it in the unencrypted version of EBOOT.BIN. Hence you
want to decrypt it and see its content, luckyly DecEboot can deal with the compression part. When you do that and open it with your hex editor ...  ¡Jackpot! You found the remaining text:
![Deceboot](https://imgur.com/S3CZJmz.png)

- In some cases the EBOOT needs to be re-encrypted for the game to work, you got lucky again because for this game 
the EBOOT can be reimported unencrypted. Now you can go back to [Text File](#Text-File) and do the same thing for the 
remaining part of the section.  
*In this guide we only worked with the text block, leaving most of the file untouched to avoid any crashing.
In that sense, we don't have to work with the header or any different address block here.*


## The Font

- You eventually have most files analysed, leaving GMO files (PSP 3d model format) and code aside. 
The font must be in the remaining. Time to open it with your text editor and find out.  

- PSP usually puts fonts in 4BPP format, you'll want to try that before scrolling. Once you have found the characters, 
if they are uncompressed (like in the digivice game) the only thing to do is discovering the actual size of the tiles. 

- This font parameters are:
````
BGA 4bpp "tiled" with 16x16 tiles
````

- And the font looks like:
![Font](https://imgur.com/MT729WV.png)

- Now it's time to edit the file to add the characters you want. Example:
![Font Changes](https://imgur.com/IxWZh74.png)

- To end this task, do not forget to modify your table file accordingly.  
* You won't be able of use the new characters properly otherwise*
![Table Changes](https://imgur.com/CjXA0uX.png)


## Repackaging the CPK

## Making the patch

## Data Location summary

| File (route) | Data in File | handling (read this guide's section)
|:---:|:---:|:---:|
| ID00000 (cpk)  | digi_lcd gim_images |
| ID00014 (cpk) | loading_icon gim_image |
| ID00016 (cpk) | title_screen gim_images | 
| ID00018 (cpk) | game_intro gim_images |
| ID00025 (cpk) | saved_data icon_png |
| ID00026 (cpk) | new_save icon_png |
| ID00027 (cpk) | background_png |
| ID00029 (cpk) | font_file |
| ID00033 (cpk) |  starting menus & a few extra prompts txt |
|---|---|---|
| (EBOOT.bin) | all remainig text, commands, and prompts |




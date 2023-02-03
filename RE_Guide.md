# RE_Guide

This will be basically a clean up version of this https://www.romhacking.net/forum/index.php?topic=35699.msg437896#msg437896
to have everything here in a nice display. 

##### Table of Contents  
[Headers](#headers)  
[Emphasis](#emphasis)

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
If you open the FILEDATA.CPK with your text editor, you will see it has more than just the text. That is because the
file is a package of files, and you want to unpackage those files now.

- Use CriPackedFileMaker to get the files inside your CPK.
![CriPackedFileMaker](https://imgur.com/GcipI9C.png)

- This time, you can either go one by one checking what's inside, or use Astrogrep again to find the text you want 
to edit. In any case, you'll end up in file ID00033.
![CriPackedFileMaker](https://imgur.com/7xk7WMG.png)


## Text File

- There are several ways to approach this section, and this guide uses one which relies one brute force. 
If you want to go and find any other guide for dumping and reinserting the text, feel free.

- Basically you need to understand how the file and header work, then create a code with armips that replicates 
the file. Go to the Armips_files folder in this repo to use this guide's scripts. 
*You'll see 2 options for this: one can create a 1:1 file; the other has edits for the translation, including 
the use of a new font table*


## More unpackaging inside the CPK



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




# RE_Guide

This will be basically a clean up version of this https://www.romhacking.net/forum/index.php?topic=35699.msg437896#msg437896
to have everything here in a nice display

## First Steps

- Open your ISO and extract your files with umdgen.
![UMDGen V.4](https://imgur.com/bZgTET9.png)

- Now with astrogrep https://astrogrep.sourceforge.net/ look for a word used in the game, はじめから
![Astrogrep](https://imgur.com/RCyQVqe.png)
As you see, it will throw results in the FILEDATA.CPK, tinkering with that file will be our next step.
*Mind you, there are a lot of text in the EBOOt file which is encrypted, those words won't appear here. 
That part will be explained later in the guide*

## Working with CPK files



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




# Folder summary 

Digimon_Dex.psd & Drop_Items.psd : Preformated samples to know the image parameters if you have problems finding them.
GIM_RE.bat : Script guide to do the reversing to the image parameters step by step
Sample.bat : Sample for sanity-check (to see if your parameters create a 1:1 GIM file)
gim2png.bat & png2gim.bat : Scripts (by Mugi) To convert all files from one format to another in one batch.

*The png2gim.bat only gives reinsertable GIMs when your PNG has the proper parameters. If your GIM is bigger or doesn't 
show in-game check those parameters (using the GIM_RE.bat)*

## Don't Forget

You need to add this code block to the GimConv.cfg file, in order to make this game's PSP GIM files.
Then you can add -digi to the cli (command line instruction)
*Remember to save the PNG in INDEX format before the GIS and GIM conversion, or it won't work*

Code snippet from ethanol:
```
//--------------------------------------------------------
//  PSP digivice GIM specific options
//--------------------------------------------------------

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
```

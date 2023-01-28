:: Author Mugi

@echo off
for %%a in (*.png) do gimconv %%a -o %%a.gim -digi 
mkdir gim
copy "*.gim" ".\gim\*.gim"
del *.gim
cd gim
rename *.gim *.
rename *.png *.gim
pause

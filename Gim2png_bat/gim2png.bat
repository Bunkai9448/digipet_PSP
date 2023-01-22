:: Author Mugi

@echo off
for %%a in (*.gim) do gimconv %%a -o %%a.png
mkdir png
copy "*.png" ".\png\*.png"
del *.png
cd png
rename *.png *.
rename *.gim *.png
pause
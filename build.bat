go build -ldflags "-H windowsgui" chrome-pdf-reader.go && ^
magick -background none -density 10000 pdf-box.svg -trim -size 256x256 -gravity center -scale 256x256 -extent 256x256 pdf-box.png && ^
magick pdf-box.png -define icon:auto-resize="255" pdf-box.ico && ^
rcedit-x64.exe chrome-pdf-reader.exe --set-icon  pdf-box.ico
del pdf-box.png
del pdf-box.ico
pause
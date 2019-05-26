go build -ldflags "-H windowsgui" chrome-pdf-viewer.go && ^
magick -background none -density 10000 pdf.svg -trim -size 256x256 -gravity center -scale 256x256 -extent 256x256 pdf.png && ^
magick pdf.png -define icon:auto-resize="255" pdf.ico && ^
rcedit-x64.exe chrome-pdf-viewer.exe --set-icon  pdf.ico
del pdf.png
del pdf.ico
pause
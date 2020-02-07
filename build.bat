cargo build --release
magick -background none -density 10000 pdf.svg -trim -size 256x256 -gravity center -scale 256x256 -extent 256x256 pdf.png
magick pdf.png pdf.ico
rcedit-x64.exe .\target\release\chrome-pdf-viewer.exe --set-icon  pdf.ico
pause
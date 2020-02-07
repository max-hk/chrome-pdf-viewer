cargo build --release
magick -background none -density 10000 pdf.svg -trim -scale 256x256 pdf.ico
rcedit-x64.exe .\target\release\chrome-pdf-viewer.exe --set-icon pdf.ico
pause
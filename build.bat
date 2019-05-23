go build -ldflags "-H windowsgui" chrome-pdf-reader.go
magick convert -background none -size 256x256 pdf-box.svg -trim -gravity center -scale 256x256 -extent 256x256 pdf-box.png
magick convert pdf-box.png pdf-box.ico
./rcedit-x64.exe chrome-pdf-reader.exe --set-icon  pdf-box.ico
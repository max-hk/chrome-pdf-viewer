# chrome-pdf-viewer

This simple go program served as a shortcut to open pdf in a popup Chrome window without tab bar and address bar

![Screenshot](https://raw.githubusercontent.com/maxloh/chrome-pdf-viewer/readme/screenshot.png)

## Usage

You need to have Google Chrome installed in order to use this program

- Open File Explorer

- Right click on a PDF file

- Select `Open With` > `Choose Another App`

- Check the `Always use this app to open .pdf files` checkbox

- Select `More apps`

- Scroll to the bottom and select `Look for another app on this PC`

- Select the downloaded binary from [Releases](https://github.com/maxloh/chrome-pdf-viewer/releases) page

## Build

### Prerequisites

- Rust installed

- [Visual C++ Build Tools 2015](https://go.microsoft.com/fwlink/?LinkId=691126) installed

- [ImageMagick](https://imagemagick.org/script/download.php) installed (for converting icon to .ico file)

- [rcedit](https://github.com/electron/rcedit/releases) downloaded and put to repo's root directory

### Run the build

```
build.bat
```

## Credits

- Program icon from [chromium/chromium](https://chromium.googlesource.com/chromium/src/+/28ee90fc0392760f358c16cbb57c0323500d7bb0/chrome/browser/resources/settings/icons.html#123), licensed under [a BSD-style license](https://chromium.googlesource.com/chromium/src/+/refs/heads/master/LICENSE)

- Sample PDF file in screenshot from [mozilla/pdf.js](https://github.com/mozilla/pdf.js/blob/f652cf8e5ea127393ee83e6cb30c51ecd6ce91c3/web/compressed.tracemonkey-pldi-09.pdf), licensed under [Apache License 2.0](https://github.com/mozilla/pdf.js/blob/master/LICENSE)
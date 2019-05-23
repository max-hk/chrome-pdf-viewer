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

- Select the downloaded binary from "Release" page

## How it works?

- `--app=URL` Chrome command line switch opens Chrome in application mode with the specified URL (`URL`)

- `-ldflags "-H windowsgui"` flag specifies Go compiler to compile an exe without console window

- `url.PathEscape()` function encodes the file path to a format that Chrome application mode accepts

- `strings.ReplaceAll()` function reverts back all `\` characters encoded by `url.PathEscape()`

- `&syscall.SysProcAttr{HideWindow: true}` hides the console window when `exec.Command()` function is executed

## Why Go?

- ASCII C does not support Unicode parameters

- The Windows entry-point of C++ is `wWinMain()`, which use a complex `PWSTR` type variable to pass command line parameters

- I chose Go because it support UTF-8 parameters, with a simple `[]string` type

## Credits

- Program icon from [Templarian/MaterialDesign](https://github.com/Templarian/MaterialDesign/blob/master/icons/svg/pdf-box.svg), licensed under [SIL Open Font License, Version 1.1](https://github.com/Templarian/MaterialDesign/blob/master/LICENSE)

- Sample PDF file in screenshot from [mozilla/pdf.js](https://github.com/mozilla/pdf.js/blob/gh-pages/web/compressed.tracemonkey-pldi-09.pdf), licensed under [Apache License 2.0](https://github.com/mozilla/pdf.js/blob/gh-pages/LICENSE)

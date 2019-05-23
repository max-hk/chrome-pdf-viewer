# chrome-pdf-viewer

The simple go program served as a shortcut to open pdf in a popup Chrome window without tab bar and address bar

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

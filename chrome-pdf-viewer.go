// go build -ldflags "-H windowsgui" chrome-pdf-reader.go
package main

import (
    "os"
    "os/exec"
    "syscall"
    "net/url"
    "strings"
)

func main() {
    cmd := exec.Command("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "--app=" + strings.ReplaceAll(url.PathEscape(os.Args[1]), "%5C", "\\"))
    cmd.SysProcAttr = &syscall.SysProcAttr{HideWindow: true}
    cmd.Run()
}
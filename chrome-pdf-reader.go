// go build -ldflags "-H windowsgui" chrome-pdf-reader.go
package main

import "os"
import "os/exec"
import "syscall"
import "net/url"
import "strings"

func main() {
	cmd := exec.Command("cmd", "/C", "C:\\Program Files (x86)\\Google\\Chrome Dev\\Application\\chrome.exe", "--app=" + strings.ReplaceAll(url.PathEscape(os.Args[1]), "%5C", "\\"))
	cmd.SysProcAttr = &syscall.SysProcAttr{HideWindow: true}
	cmd.Run()
}
; This script switches to VS Code when pressing Ctrl + Alt + V
^q::
IfWinExist ahk_class MozillaWindowClass ; Checks if a Firefox window exists
{
    WinActivate ; Switch to Chrome
}
IfWinExist ahk_class HwndWrapper[DefaultDomain;;] ; Checks if VS Code is open
{
    WinActivate ; Switch to VS Code
}
return

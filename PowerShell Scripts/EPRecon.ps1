$url = ''
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -OutFile $env:C:\Documents\EPRecon.ps1 
Powershell.exe .\EPRecon.ps1
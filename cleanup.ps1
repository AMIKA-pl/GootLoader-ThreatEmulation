<#
STEP: Clean Up
#>


Remove-Item C:\Tools\GootLoader\*.json -Force
Unregister-ScheduledTask -TaskName studentadmin -Confirm:$false
Remove-Item C:\Users\studentadmin\credentials* -Force

cmd /c "taskkill /F /IM advanced_ip_scanner.exe"
cmd /c "del C:\Tools\GootLoader\Advanced_IP_Scanner_2.5.4594.1.exe"
cmd /c "wmic product where name='Advanced IP Scanner 2.5.1' call uninstall /nointeractive"
cmd /c reg delete HKLM\System\CurrentControlSet\Control\lsa /v DisableRestrictedAdmin /f
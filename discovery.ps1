<#
STEP: Discovery
#>
#[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
whoami
hostname
cmd.exe /c echo %userdomain%

Import-Module C:\Tools\GootLoader\sharphound.ps1

Invoke-Bloodhound -CollectionMethod All

Powershell wmic.exe /Namespace:\\root\SecurityCenter2 Path AntiVirusProduct Get displayName /Format:List
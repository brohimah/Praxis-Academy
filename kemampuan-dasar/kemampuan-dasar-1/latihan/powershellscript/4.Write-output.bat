@ECHO OFF
Add-Content -Path 'D:\bootcamp\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts\contoh4.ps1' -Value "[ZoneTransfer]`nZoneId=3" -Stream 'Zone.Identifier'
PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dpn0.ps1""' -Verb RunAs}"
PAUSE
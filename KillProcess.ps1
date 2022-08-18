#To kill a running process
#Now synched with hit-hub
Get-Process
$ProcessName = Read-Host "Enter a Process Name to Kill"
Get-Process -Name $ProcessName | Stop-Process
Write-Host $ProcessName "Killed" -ForegroundColor Blue

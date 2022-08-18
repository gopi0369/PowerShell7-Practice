#To kill a running process
Get-Process
$ProcessName = Read-Host "Enter a Process Name to Kill"
$killprocess = Get-Process -Name $ProcessName | Stop-Process
$Getprocess = Get-Process 
Write-Host $ProcessName "Killed" -ForegroundColor Blue

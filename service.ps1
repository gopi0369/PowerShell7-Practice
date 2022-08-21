#To Test Service related commands
Get-Service |Where-Object {$_.Status -eq "running" -and $_.DisplayName -like "*DNS*"}
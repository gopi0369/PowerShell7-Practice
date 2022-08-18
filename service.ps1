#To Test Service related commands
Get-Service |Where-Object {$_.Status -eq "running"}
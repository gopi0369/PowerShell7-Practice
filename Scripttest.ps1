$ServiceName = Read-Host "Please Type Service name"
$DNScacheService = Get-Service -Name $ServiceName

Write-Host $DNScacheService.Name -ForegroundColor Cyan
Write-Host $DNScacheService.DisplayName -ForegroundColor Blue
Write-Host $DNScacheService.Description -ForegroundColor DarkGreen 

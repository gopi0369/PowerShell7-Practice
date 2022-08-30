#Powershell script to retrive details about the Desktop
$Location = "F:\PS7 Practice\Testfolder"

# Retrive Desktop settings
$desktop = Get-CimInstance -ClassName Win32_Desktop

#Retrive BIOS information
$bios = Get-CimInstance -ClassName Win32_BIOS

#retrive processor information
$processor = Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -Property SystemType

#retriv computermanufacturer Details
$manufacturer = Get-CimInstance -ClassName Win32_ComputerSystem

#get installed hotfixes
$hotfixes = Get-CimInstance -ClassName Win32_QuickFixEngineering

#get operating system version information
$operatingsystem = Get-CimInstance -ClassName Win32_OperatingSystem | 
  Select-Object -Property BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion

#get users and owners
$usergroup = get-ciminstance -ClassName Win32_OperatingSystem |
   Select-Object -property NumberOfLicensedUsers,NumberOfUsers,RegisteredUser
   
#get currently logged-on user
$loggedon = Get-CimInstance -ClassName  Win32_ComputerSystem |Select-Object -Property UserName

#get all services status
$services = Get-CimInstance -ClassName Win32_Service | Select-Object -Property Status,Name,DisplayName


#Create file
$report = "$($Location)\Report.log"
New-Item $report -ItemType File -Value "Desktop Report"
Add-Content $report "***************Desktop Details********************"
Add-Content $report $desktop
Add-Content $report "***************Bios Details***************"
Add-Content $report $bios
Add-Content $report "***************Processor Details******************"
Add-Content $report $processor
Add-Content $report "****************Manufacturer Details******************"
Add-Content $report $manufacturer
Add-Content $report "**********Hotfix Details*************"
Add-Content $report $hotfixes
Add-Content $report "***********Operating System Details**********"
Add-Content $report $operatingsystem
Add-Content $report "************User and Group Details**************"
Add-Content $report $usergroup
Add-Content $report "**********Logged on user details*************"
Add-Content $report $loggedon
Add-Content $report "***********Service Details**********"
Add-Content $report $services
 
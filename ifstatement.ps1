#IF statement basic to advance practice

$a = 2 
$b = 3

if ($a -gt $b) {
    $Message1 = "Matched : This is Message1 |"
} else {
    $Message1 = "Not matched : THis is message1 |"
}

if ($a -lt $b) {
    $Message2= "Matched : This is Message2 |"
} else {
    $Message2 = "Not matched : THis is message2 |"
}

if ($a -eq $b) {
    $Message3 = "Matched : This is Message3 |"
} else {
    $Message3 = "Not matched : THis is message3 |"
}

Write-Host $Message1
Write-Host $Message2
Write-Host $Message3

[PSCustomObject]@{
    "Message1" = $Message1
    "Message2" = $Message2
    "Message3" = $Message3
}

$customobject = [PSCustomObject]@{
    "Message1" = $Message1
    "Message2" = $Message2
    "Message3" = $Message3
}

$customobject.Message3

$CustomTernaryObject = [PSCustomObject]@{
    "Message1" = (($a -gt $b) ? "Matched : Message1" : "Not Matched : Message1")
    "Message2" = (($a -lt $b) ? "Matched : Message2" : "Not Matched : Message2")
    "Message3" = (($a -eq $b) ? "Matched : Message3" : "Not Matched : Message3")
}

$Country = Read-Host "Type your Favourit country Name"
switch ($country)
 {
    Germany {'Your Favourit country is Germany'}
    India {'Your Favourit country is India'}
    America {'Your Favourit country is America'}
    China {'Your Favourit country is China'}
}

$Country1 = Read-Host "Type your Favourit country Name"
switch ($country1)
 {
    Germany {'Your Favourit country is Germany'}
    India {'Your Favourit country is India'}
    America {'Your Favourit country is America'}
    China {'Your Favourit country is China'}
    default { '$Country1 Not In This List sorry!' }
}

$Option1 = Read-Host "Type your First Favourit country Name"
$Option2 = Read-Host "Type your Second Favourit country Name"
switch ($Option1,$Option2)
 {
    India {'Your Favourit country is India'}
    Germany {'Your Favourit country is Germany'}
    America {'Your Favourit country is America'}
    China {'Your Favourit country is China'}
    default { ' Not In This List sorry!' }
}
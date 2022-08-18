
function Display-message1()
{
    Write-Host "My Rules"
}

function Display-message2($message)
{
    Write-Host $message
}

function Display-message3()
{
    [string]$Value1 = $args[0]
    [string]$Value2 = $args[1]

    Write-Host $Value1 $Value2
}


function Display-message4()
{
   Param(
           [Parameter(Mandatory=$true)]
           [string]$text  

   )

   Write-Host $text
}

function Display-message()
{
   Param
   (
           [Parameter(Mandatory=$true)]
           [validateSet("Lexus","Porsche","Toyota","Mercedes-Benz","BMW","Honda","Ford","Chevrolet")]
           [string]$CAR  

   )

   Write-Host "I like to drive a"$CAR
}
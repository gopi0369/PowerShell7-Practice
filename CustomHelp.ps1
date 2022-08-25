#Help files contents for Ps1 are added in the top
#Help files contents for function() are added with in function block
#In a Single .Ps1 file,we can't add two help files

function Add-FourNumber() 
{
    param (
        # Specifies the first number
        [int32]$first,
        # Specifies the second number
        [int32]$second,
        # Specifies the third number
        [int32]$third,
        # Specifies the fourth number
        [int32]$fourth
    )
    #Add the four numbers and return the result
    $result = $first + $second + $third + $fourth
    #Write the sum to th console
    Write-Host "$($first) + $($second) + $($third) + $($fourth) = $($result) "
    
}

function Add-FiveNumber() 
{
    param (
        # Specifies the first number
        [int32]$first,
        # Specifies the second number
        [int32]$second,
        # Specifies the third number
        [int32]$third,
        # Specifies the fourth number
        [int32]$fourth,
        # Specifies the fifth number
        [int32]$fifth
    )
    #Add the four numbers and return the result
    $result = $first + $second + $third + $fourth + $fifth
    #Write the sum to th console
    Write-Host "Here is the full sum"
    Write-Host "$($first) + $($second) + $($third) + $($fourth) + $($fifth) = $($result) "
    <#
        .SYNOPSIS
        Add five number together and return the result.

        .DESCRIPTION
        Add five number together and return the result.
        Takes any Five Numbers.

        .PARAMETER first
        Specifies the first number

        .PARAMETER second
        Specifies the second number

        .PARAMETER third
        Specifies the third number

        .PARAMETER fourth
        Specifies the fourth number

        .PARAMETER fifth
        Specifies the fifth number

        .INPUTS
        None

        .OUTPUTS
        System.string

        .EXAMPLE
        c:\PS> Add-Fivenumbers -First 1 -Second 2 -Third 3 -Fourth 4 -Fifth 5
        Here is the full sum
        1 + 2 + 3 + 4 + 5 = 15

    #>
}



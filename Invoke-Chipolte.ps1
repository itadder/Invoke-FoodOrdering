cls
#$URL_ORDER = 'https://order.chipolte.com/?_ga='
$URL_ORDER = 'https://order.chipotle.com/?_ga=1.186280618.2025408551.1464969741'
function Invoke-Chipolte
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        #[Parameter(Mandatory=$true,
        #           ValueFromPipelineByPropertyName=$false,
        #           Position=0)]
        #$options
    )

    Begin
    {
       #The Menu System to order Food
       #This will be used if -menu options picked
       function Invoke-FoodMenu
       {
           Write-host "***************************************************"
           write-host "* Please Make a Selection from the Food Menu Below:"
           write-host "*"
           Write-host "* [1] See Food Menu: "
           write-host "*"
           write-host "* [2] Place Food Order: "
           write-host "*"
           write-host "* [3] View Food Order: "
           write-host "*"
           Write-host "* [4] Sumbit Order: "
           write-host "*"
           write-host "* [5] Track Order: "
           write-host "*"
           write-host "* [6] Exit: "
           write-host "*"
           write-host "***************************************************"
           
           # Prompt for user input
           $x = read-host -Prompt "Make a Selection"

           # A Switch to to check what was the user input and evulate
            switch ($x)
            {
                1 { cls
                    write-host "option 1: Food Menu." $_
                    break 
                    }
                2 { write-host "Option 2: Place Order." $_
                    break  
                  }
                3 { write-host "Option 3: View Order. " $_
                    break  
                  }
                4 { write-host "Option 4: Sumbit Order. " $_
                    break  
                  }
                5 { write-host "Option 5: Track Order. " $_
                    break  
                  }
                6 { write-host "Exit" $_
                    break
                  }
                
                Default {
                    return $true
                }

                
            }

            # This will loop the Menu, until $restart is not true
            do
                {
                    $restart = Invoke-FoodMenu
                    if ($restart -eq $true)
                    {
                        cls
                        Write-host "!! Invalid Option: Please Try Again"
                        write-host ""    
                    }
                }
                until ($restart -ne $true)

               
           
       }
       
    }
    Process
    {
        Invoke-FoodMenu
    }

    End
    {
    }
}
Invoke-Chipolte


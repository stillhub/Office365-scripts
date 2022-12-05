# Script that removes specified license SKU from multiple Office 365 accounts.
# Script created by Jared Stillwell
# Version: 1.0
#  Notes:
#   -Adjust $RemoveSKU to specific license SKU.
#   -Add UPNs to 'UserUPNs.txt'
#

Import-Module MSOnline
Connect-MsolService

# Get-MsolAccountSku

$RemoveSKU = "example:THREAT_INTELLIGENCE"

$UPNList = Get-Content -Path ".\UserUPNs.txt"

foreach($User in $UPNList){
    Set-MsolUserLicense -UserPrincipalName $User -RemoveLicenses $RemoveSKU
}
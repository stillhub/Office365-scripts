# Script to create a report with users that have SKU license A ($SKU_A) and SKU license B ($SKU_B).
# Script created by Jared Stillwell
# Version: 1.0
#  Notes:
#   - Change $SKU_A and $SKU_B values to SKU values you would like to compare.

#Get-MsolAccountSku

Connect-Msolservice

$SKU_A = "example:SPE_E3"
$SKU_B = "example:SPE_E5"

$LogLocation = ".\Log.csv"

$DuplicatedLicenses = Get-MsolUser -All | Where-Object {($_.licenses).AccountSkuId -match $SKU_A -and ($_.licenses).AccountSkuId -match $SKU_B}
$DuplicatedLicenses | Select-Object DisplayName,UserPrincipalName | Export-CSV -Path $LogLocation -NoTypeInformation

if(($DuplicatedLicenses)){
    Write-host "TRUE"

}else{
    Write-host "FALSE"
}
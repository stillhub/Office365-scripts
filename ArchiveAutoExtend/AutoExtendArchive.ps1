# Script to enable Auto expanding archive for O365 user
# Script created by Jared Stillwell
# Version: 1.0
#  Notes:
#   -
#


$EmailOfUser = "x@example.com"

##############################################

Import-Module ExchangeOnlineManagement

Connect-ExchangeOnline

Enable-Mailbox $EmailOfUser -AutoExpandingArchive

Get-Mailbox $EmailOfUser | Format-list
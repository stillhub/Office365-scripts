# Example use case for adding, setting and getting Mailbox folder permissions for Office 365.
# Script created by Jared Stillwell
# Version: 1.0
#  Notes:
#

import-Module ExchangeOnlineManagement

Connect-ExchangeOnline


Add-MailboxFolderPermission -Identity x@example.com:\Calendar -User y@example.com -AccessRights Editor -SharingPermissionFlags Delegate

Set-MailboxFolderPermission -Identity x@example.com:\Calendar -User default -AccessRights Reviewer

Get-MailboxFolderPermission -Identity x@example.com:\Calendar
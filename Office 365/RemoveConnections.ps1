$Person = Read-Host "Enter the email you want to disable"

Connect-MsolService

Set-MsolUser -UserPrincipalName $Person -BlockCredential $true
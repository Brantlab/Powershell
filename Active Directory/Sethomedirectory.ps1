$users = Get-ADUser -searchbase "OU=amix,OU=Users,OU=Heritage of Warren,DC=ummh,DC=org" -Filter {Enabled -eq $true} -Properties CN, SamAccountName, homedirectory
foreach ($user in $users)            
{ 

    set-aduser $user.SamAccountName -homedirectory \\HOW-FS\Users\$_user.SamAccountName -homedrive u:

}
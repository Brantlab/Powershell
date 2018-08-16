$Users = Import-Csv -Delimiter "," -Path "C:\"            
foreach ($User in $Users)            
{            
    Set-ADUser -Identity $User.SamAccountName  -GivenName $_user.GivenName -sn $_user.sn -DisplayName $_user.DisplayName -officenumber $user.telephonenumber -EmailAddress $user.EmailAddress -StreetAddress $user.StreetAddress -City $user.City -State $user.State -PostalCode $user.PostalCode -HomePhone $user.Homephone -Mobile $user.Mobile -MobilePhone $user.MobilePhone -Title $user.Title -Company $user.Company    -whatif
        
}

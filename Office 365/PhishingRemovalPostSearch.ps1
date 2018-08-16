#$UserCredential = Get-Credential
#$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.compliance.protection.outlook.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
#Import-PSSession $Session
$title = Read-Host "Enter the search title"
$other = $title + "_Purge"
New-ComplianceSearchAction -SearchName "$title" -Purge

    for($counter = 1; $counter -le 10; $counter++)
	           {
                sleep 2 
                Get-ComplianceSearchAction -identity "$other" | Where-Object status
               }
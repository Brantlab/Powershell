# First, download, and install the Microsoft Online Services Sign-In Assistant. ( http://go.microsoft.com/fwlink/?LinkID=286152 )
# Now download and install the 64-bit Azure Active Directory module for Windows PowerShell. ( https://docs.microsoft.com/powershell/azure/active-directory/install-msonlinev1?view=azureadps-1.0 )

Write-Host -NoNewLine 'First, download, and install the Microsoft Online Services Sign-In Assistant. ( http://go.microsoft.com/fwlink/?LinkID=286152 ) Press any key to continue';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

Clear-host

Write-Host -NoNewLine 'Now download and install the 64-bit Azure Active Directory module for Windows PowerShell. ( https://docs.microsoft.com/powershell/azure/active-directory/install-msonlinev1?view=azureadps-1.0 )Press any key to continue';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

Clear-Host

Set-Location "C:\Program Files\Microsoft Azure Active Directory Connect"

Import-Module .\AzureADSSO.psd1

# Global Admin Credentials
New-AzureADSSOAuthenticationContext

Get-AzureADSSOStatus

# Local Domain Admin
$creds = Get-Credential

Update-AzureADSSOForest -OnPremCredentials $creds
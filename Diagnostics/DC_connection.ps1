Try
{
    $DC = Get-ADDomainController -Identity $Server
}
Catch
{
    Write-Host "Error: " -NoNewline -ForegroundColor Yellow
    Write-Host $_.Exception.Message
    Write-Host
    Break
}
 
# Testing connection
If(!(Test-Connection -Cn $Server -BufferSize 16 -Count 1 -ea 0 -Quiet))
{
    Write-Warning   "Failed to connect to $Server"
}
Else
{
  
 .........
 
}
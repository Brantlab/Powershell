$servers = get-content "c:\servers.txt"

foreach ($server in $servers){
$dt = Get-WmiObject win32_operatingsystem -computer $server
$dt_str = $dt.converttodatetime($dt.localdatetime)
write-host "$($server) current local time is $($dt_str)"
}
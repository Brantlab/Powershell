$servers = Get-ADComputer -Filter * -SearchBase "OU=Domain Controllers,DC=pathfinder,DC=local"
ForEach ($server in $servers) {
    $time = ([WMI]'').ConvertToDateTime((gwmi win32_operatingsystem -computername $server).LocalDateTime)
    $server + '  ' + $time
}

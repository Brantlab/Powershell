$servers = 'FWDC01', 'FWDC02', 'goshenfs1', 'choicefs1', 'storage'
ForEach ($server in $servers) {
    $time = ([WMI]'').ConvertToDateTime((gwmi win32_operatingsystem -computername $server).LocalDateTime)
    $server + '  ' + $time
}

1
[void]($Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown'))
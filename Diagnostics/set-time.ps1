$Server = "servername"

Invoke-Command -Computername $Server -ScriptBlock { w32tm /config /syncfromflags:manual /manualpeerlist:"la-dc4.la.local" /update }

Invoke-Command -Computername $Server -ScriptBlock { w32tm /resync }
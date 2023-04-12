$connectedUsers = Get-RDUserSession -ConnectionBroker "<connection broker here>"
$countConnectedUsers = $connectedUsers.Count

$x=[string]$countConnectedUsers+":OK"
write-output $x
Import-Module ActiveDirectory

$ExpiredPwd=Get-ADUser -filter * -properties Name, PasswordNeverExpires, PasswordExpired, PasswordLastSet | where {$_.Enabled -eq "True"} | where {$_.PasswordNeverExpires -eq $false} | where {$_.passwordexpired -eq $true}
$cntExpiredPWD=@($ExpiredPWD.count)

$x=[string]$cntExpiredPWD+":OK"
write-output $x
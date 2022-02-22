Import-Module ActiveDirectory

$NotExpiringPWD=Get-ADUser -Filter {Enabled -eq $True -and PasswordNeverExpires -eq $True -and objectCategory -eq "person" -and objectClass -eq "user"} -Properties sAMAccountName,DisplayName,LockedOut,LockoutTime,Enabled,AccountExpirationDate 
$cntNotExpiringPWD=@($NotExpiringPWD.count)

$x=[string]$cntNotExpiringPWD+":OK"
write-output $x
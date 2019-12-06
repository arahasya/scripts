#!/usr/bin/expect -f
set loc [lindex $argv 0];
catch {exec nordvpn logout}
spawn nordvpn login
expect "Email / Username: "
send -- "43saps@gmail.com\r"
expect "Password: "
send -- "Iloven@rd43!\r"
expect eof
exec nordvpn c "$loc"
set timeout -1

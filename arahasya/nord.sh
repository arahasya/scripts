#!/usr/bin/expect -f
set loc [lindex $argv 0];
spawn nordvpn c "$loc"
expect "Email / Username: "
send "43saps@gmail.com\r"
expect "Password: "
send "Iloven@rd43!\r"
expect eof

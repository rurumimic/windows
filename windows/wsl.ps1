wsl -d Ubuntu -- ip addr show eth0 | select-string -pattern "inet\b" | out-string | %{$_.trim()} | %{($_ -split ' ')[1]} | %{($_ -split '/')[0]} | set-variable -name "ubuntu"
(get-content C:\Windows\System32\drivers\etc\hosts) -replace ".+ubuntu.local", "$ubuntu ubuntu.local" | set-content C:\Windows\System32\drivers\etc\hosts

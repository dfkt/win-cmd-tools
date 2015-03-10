@echo off

if exist dnscrypt-proxy-ping-results.txt del dnscrypt-proxy-ping-results.txt

ping 80.90.43.162           >> dnscrypt-proxy-ping-results.txt
ping 113.20.6.2             >> dnscrypt-proxy-ping-results.txt
ping 113.20.8.17            >> dnscrypt-proxy-ping-results.txt
ping 95.141.34.162          >> dnscrypt-proxy-ping-results.txt
ping 179.43.143.69          >> dnscrypt-proxy-ping-results.txt
ping 108.61.210.58          >> dnscrypt-proxy-ping-results.txt
ping 178.32.122.65          >> dnscrypt-proxy-ping-results.txt
ping 37.187.0.40            >> dnscrypt-proxy-ping-results.txt
ping 178.17.170.67          >> dnscrypt-proxy-ping-results.txt
ping 95.85.9.86             >> dnscrypt-proxy-ping-results.txt
ping 31.220.27.46           >> dnscrypt-proxy-ping-results.txt
ping 37.221.170.105         >> dnscrypt-proxy-ping-results.txt
ping 37.221.170.104         >> dnscrypt-proxy-ping-results.txt
ping 46.151.208.154         >> dnscrypt-proxy-ping-results.txt
ping 128.199.248.105        >> dnscrypt-proxy-ping-results.txt
ping 77.66.84.233           >> dnscrypt-proxy-ping-results.txt
ping 77.66.84.233           >> dnscrypt-proxy-ping-results.txt
ping 176.56.237.171         >> dnscrypt-proxy-ping-results.txt
ping 176.56.237.171         >> dnscrypt-proxy-ping-results.txt
ping 212.47.228.136         >> dnscrypt-proxy-ping-results.txt
ping 194.132.32.32          >> dnscrypt-proxy-ping-results.txt
ping 23.226.227.93          >> dnscrypt-proxy-ping-results.txt
ping 208.67.220.220         >> dnscrypt-proxy-ping-results.txt
ping 208.67.220.123         >> dnscrypt-proxy-ping-results.txt
ping 208.67.220.220         >> dnscrypt-proxy-ping-results.txt
ping 142.4.204.111          >> dnscrypt-proxy-ping-results.txt
ping 142.4.205.47           >> dnscrypt-proxy-ping-results.txt
ping 146.185.134.104        >> dnscrypt-proxy-ping-results.txt
ping 173.230.156.28         >> dnscrypt-proxy-ping-results.txt
ping 178.216.201.222        >> dnscrypt-proxy-ping-results.txt

"%ProgramFiles(x86)%\Notepad++\notepad++.exe" "dnscrypt-proxy-ping-results.txt"

exit

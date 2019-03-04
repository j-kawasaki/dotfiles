@echo off
pause

set IFNAME="イーサネット 2"
set IPADDR=172.16.102.8
set MASK=255.255.0.0
set GW=172.16.0.1
set DNS1=133.1.138.166
set DNS2=133.1.173.236

netsh interface ipv4 set address name=%IFNAME% static %IPADDR% %MASK% %GW% 1
netsh interface ipv4 set dnsservers name=%IFNAME% static %DNS1% primary validate=no
netsh interface ipv4 add dnsservers name=%IFNAME% %DNS2% index=2 validate=no

ipconfig /all

pause
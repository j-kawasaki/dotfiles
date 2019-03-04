@echo off
pause

set IFNAME="Wi-Fi"

netsh interface ipv4 set address name=%IFNAME% dhcp
netsh interface ipv4 set dnsservers name=%IFNAME% dhcp

ipconfig /all

pause
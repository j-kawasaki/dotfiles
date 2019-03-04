@echo off
pause

set IFNAME="イーサネット 2"

netsh interface ipv4 set address name="イーサネット 2" dhcp
netsh interface ipv4 set dnsservers name="イーサネット 2" dhcp

ipconfig /all

pause
#!/bin/sh

echo "==================================="
echo "Wirnet iFemtoCell Board Information"
echo "==================================="
echo
echo "--- CPU Info ----------------------"
cat /proc/cpuinfo
echo
echo "---Linux Version ------------------"
uname -a
echo
echo "--- Uptime ------------------------"
uptime
echo
echo "--- Memory Usage ------------------"
free -m
df -h
echo
echo "--- CPU Temperature ---------------"
cat /sys/class/hwmon/hwmon0/temp1_input
echo
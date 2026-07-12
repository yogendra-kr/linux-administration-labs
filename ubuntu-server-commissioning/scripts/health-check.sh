#!/bin/bash

set -euo pipefail

echo "===== System Health Report ====="
echo

echo "Generated:"
date
echo

echo "Hostname:"
hostname
echo

echo "Uptime:"
uptime
echo

echo "Memory Usage:"
free -h
echo

echo "Disk Usage:"
df -h /
echo

echo "Filesystem Type:"
findmnt -no FSTYPE /
echo

echo "Load Average:"
cat /proc/loadavg
echo

echo "Top 5 Memory Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
#!/bin/bash

# Log file
LOGFILE="system_log.txt"

# Time and date
echo "$(date)">>"$LOGFILE"

# CPU usage (uses top and grep for the %Cpu line)
echo "CPU usage:">> "$LOGFILE"
top -bn1 | grep "%Cpu">> "$LOGFILE"

# Memory usage
echo "Memory usage:">> "$LOGFILE"
free -h >> "$LOGFILE"

# Disk space
echo "Disk usage:">> "$LOGFILE"
df -h / >> "$LOGFILE"

# Separator line
echo "-------------------------------------" >> "$LOGFILE"

# Output to terminal (optional)
echo "System status logged to $LOGFILE"

 

#!/bin/bash
# System monitoring script

OUTPUT="/tmp/sysinfo.txt"

echo "Saving system info to $OUTPUT"

{
  echo "===== Date ====="
  date
  echo "===== Uptime ====="
  uptime
  echo "===== Memory ====="
  free -m
  echo "===== Disk Usage ====="
  df -h
  echo "===== Top 5 Processes ====="
  ps aux --sort=-%mem | head -n 6
} > $OUTPUT

cat $OUTPUT


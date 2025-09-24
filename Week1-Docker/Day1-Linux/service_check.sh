#!/bin/bash
# Service status checker

SERVICE=$1

if [ -z "$SERVICE" ]; then
  echo "Usage: $0 <service-name>"
  exit 1
fi

echo "Checking service: $SERVICE"
systemctl status $SERVICE --no-pager

echo "Restarting $SERVICE..."
sudo systemctl restart $SERVICE

echo "Verifying status..."
systemctl is-active $SERVICE && echo "$SERVICE is running ✅" || echo "$SERVICE is not running ❌"


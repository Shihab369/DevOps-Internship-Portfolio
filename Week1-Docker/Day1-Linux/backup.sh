#!/bin/bash
# Backup script using tar & zip

echo "Archiving current directory into backup.tar.gz..."
tar -czvf backup.tar.gz ./*

echo "Creating a zip archive..."
zip -r backup.zip ./*

echo "Backup complete!"


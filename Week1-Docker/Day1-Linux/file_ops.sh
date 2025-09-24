#!/bin/bash
# File operations practice script

echo "Creating directories..."
mkdir -p dev ops backupdir

echo "Creating files..."
touch file1.txt file2.txt
touch devopsfile{1..5}.txt

echo "Copying files..."
cp file1.txt backupdir/
cp devopsfile1.txt dev/

echo "Moving files..."
mv file2.txt ops/
mv ops dev/

echo "Renaming files..."
mv file1.txt file1_renamed.txt

echo "Cleaning up..."
rm -rf *.txt


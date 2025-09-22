#!/bin/bash
# -------------------------------
# Daily DevOps Internship Push Script
# -------------------------------

# Usage check
if [ -z "$1" ]; then
  echo "Usage: ./daily_push.sh <DayNumber>"
  exit 1
fi

DAY=$1
TOTAL_DAYS=28
PROGRESS_FILE="Progress.md"
README_FILE="README.md"

# -------------------------------
# Step 1: Update Progress.md
# -------------------------------
# Create Progress.md if it doesn't exist
if [ ! -f "$PROGRESS_FILE" ]; then
  echo "# Daily Progress Log" > "$PROGRESS_FILE"
  echo "" >> "$PROGRESS_FILE"
fi

# Ask for daily hours and tasks
read -p "Hours spent today: " HOURS
echo "Write a short summary of what you did today:"
read TASKS

# Append daily entry
echo "## Day $DAY" >> "$PROGRESS_FILE"
echo "- **Hours spent:** $HOURS" >> "$PROGRESS_FILE"
echo "- **Tasks done:** $TASKS" >> "$PROGRESS_FILE"
echo "" >> "$PROGRESS_FILE"

# -------------------------------
# Step 1.5: Update progress badge in README.md
# -------------------------------
PERCENT=$(( DAY * 100 / TOTAL_DAYS ))

# Replace existing badge or add if missing
if grep -q "!\[Progress\](https://img.shields.io/badge/Progress-" "$README_FILE"; then
    sed -i "s/!\[Progress\](https:\/\/img.shields.io\/badge\/Progress-[0-9]\+%25-[a-z]*\)/![Progress](https:\/\/img.shields.io\/badge\/Progress-${PERCENT}%25-brightgreen)/" "$README_FILE"
else
    sed -i "1i ![Progress](https://img.shields.io/badge/Progress-${PERCENT}%25-brightgreen)" "$README_FILE"
fi

# -------------------------------
# Step 2: Stage all changes
# -------------------------------
git add .

# -------------------------------
# Step 3: Commit
# -------------------------------
git commit -m "Day $DAY: Daily update - $HOURS hrs, tasks: $TASKS"

# -------------------------------
# Step 4: Push to GitHub
# -------------------------------
git push origin main

echo "✅ Day $DAY changes, Progress.md entry, and progress badge pushed!"

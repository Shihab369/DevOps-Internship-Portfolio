#!/bin/bash
# -------------------------------
# Daily DevOps Internship Push Script (Progress + Tracker + Badge + Auto-Task)
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
TRACKER_FILE="Daily_Tracker.md"
TASKS_TEMPLATE="tasks_template.txt"

# -------------------------------
# Step 0: Pull latest changes & rebase
# -------------------------------
echo "⏳ Pulling latest changes from remote..."
git pull origin main --rebase

# -------------------------------
# Step 1: Update Progress.md
# -------------------------------
if [ ! -f "$PROGRESS_FILE" ]; then
  echo "# Daily Progress Log" > "$PROGRESS_FILE"
  echo "" >> "$PROGRESS_FILE"
fi

read -p "Hours spent today: " HOURS

# -------------------------------
# Step 1.1: Auto-fill task from template
# -------------------------------
if [ -f "$TASKS_TEMPLATE" ]; then
    TASK=$(grep "^Day $DAY:" "$TASKS_TEMPLATE" | cut -d ":" -f2- | sed 's/^ //')
    echo "Suggested task for Day $DAY: $TASK"
else
    TASK=""
fi

read -p "Press Enter to accept suggested task or type your own: " USER_TASK
if [ ! -z "$USER_TASK" ]; then
    TASK=$USER_TASK
fi

# -------------------------------
# Append to Progress.md
# -------------------------------
echo "## Day $DAY" >> "$PROGRESS_FILE"
echo "- **Hours spent:** $HOURS" >> "$PROGRESS_FILE"
echo "- **Tasks done:** $TASK" >> "$PROGRESS_FILE"
echo "" >> "$PROGRESS_FILE"

# -------------------------------
# Step 1.5: Update progress badge in README.md
# -------------------------------
PERCENT=$(( DAY * 100 / TOTAL_DAYS ))

if grep -q "![Progress](https://img.shields.io/badge/Progress-" "$README_FILE"; then
    sed -i "s/!\[Progress\](https:\/\/img.shields.io\/badge\/Progress-[0-9]\+%25-[a-z]*\)/![Progress](https:\/\/img.shields.io\/badge/Progress-${PERCENT}%25-brightgreen)/" "$README_FILE"
else
    sed -i "1i ![Progress](https://img.shields.io/badge/Progress-${PERCENT}%25-brightgreen)" "$README_FILE"
fi

# -------------------------------
# Step 2: Update Daily_Tracker.md
# -------------------------------
TODAY_DATE=$(date +"%Y-%m-%d")

if [ ! -f "$TRACKER_FILE" ]; then
  echo "# DevOps Internship Progress Tracker" > "$TRACKER_FILE"
  echo "Track your daily tasks, hours, challenges, and next steps." >> "$TRACKER_FILE"
  echo "" >> "$TRACKER_FILE"
fi

# Update Hours, Tasks, and Date for the specific Day
sed -i "s/| $DAY |      |            |/| $DAY | $TODAY_DATE | $HOURS | $TASK | | |/" "$TRACKER_FILE"

# -------------------------------
# Step 3: Stage all changes
# -------------------------------
git add .

# -------------------------------
# Step 4: Commit
# -------------------------------
git commit -m "Day $DAY: Daily update - $HOURS hrs, tasks: $TASK"

# -------------------------------
# Step 5: Push to GitHub
# -------------------------------
git push origin main

echo "✅ Day $DAY changes, Progress.md, Daily_Tracker.md, and badge pushed!"

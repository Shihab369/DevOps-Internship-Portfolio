# Day 1 – Linux Basics & Hands-On Projects

## Overview
On Day 1, I completed my **Linux fundamentals journey**, covering:
- File system structure & navigation
- File and directory operations
- Vim editor basics
- File types, links (soft & hard)
- Filters & redirections (grep, cut, sed, etc.)
- Users & groups management
- File permissions & ownership
- Package management (yum, apt, rpm)
- Services & processes
- Archiving & compression
- System monitoring tools (df, free, uptime, top)

Linux is the **foundation of DevOps** — mastering these skills ensures I can work confidently on servers, automation scripts, and production systems.

---

## What’s Included
1. **linux_cheatsheet.md**  
   - Quick reference of all important Linux commands.

2. **file_ops.sh**  
   - Automates creating, moving, copying, renaming, and cleaning files/directories.

3. **user_mgmt.sh**  
   - Creates users, groups, assigns permissions, and manages ownership.

4. **sys_monitor.sh**  
   - Collects system health info (uptime, memory, disk, top processes).

5. **backup.sh**  
   - Demonstrates archiving & compression using `tar` and `zip`.

6. **service_check.sh**  
   - Checks, restarts, and verifies status of any Linux service.

---

## Key Learning
- Practicing commands in scripts makes them reusable and automatable.  
- Managing users, groups, and permissions builds **real-world sysadmin skills**.  
- Understanding processes, services, and logs is critical for **troubleshooting in DevOps**.  
- Automation with bash scripting saves time and reduces human error.

---

## Demo (example output)
```bash
$ ./sys_monitor.sh
===== Date =====
Tue Sep 24 02:00:00 UTC 2025
===== Uptime =====
 02:00:05 up 10 min,  1 user,  load average: 0.01, 0.05, 0.09
===== Memory =====
              total        used        free      shared  buff/cache   available
Mem:           1999         500        1200          20         299        1400
===== Disk Usage =====
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        20G  3.0G   17G  15% /
===== Top 5 Processes =====
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND


# Linux Cheat Sheet

## Navigation
- `pwd` → print working directory  
- `ls -l` → list with details  
- `cd /path` → change directory  

## Files & Directories
- `mkdir dir1 dir2` → create dirs  
- `touch file.txt` → create file  
- `cp file.txt /tmp/` → copy file  
- `mv file.txt newname.txt` → move/rename file  
- `rm file.txt` → remove file  
- `tree` → show directory tree  

## File Types & Links
- `file filename` → check type  
- `ln -s file linkname` → soft link  

## Filters & Redirection
- `grep "text" file.txt`  
- `head -n 5 file.txt`  
- `tail -f /var/log/messages`  
- `cut -d: -f1 /etc/passwd`  
- `sed 's/old/new/g' file.txt`  
- `cmd > out.txt` → redirect output  
- `cmd >> out.txt` → append output  

## Users & Groups
- `useradd devops`  
- `passwd devops`  
- `groupadd admins`  
- `usermod -aG admins devops`  
- `id devops`  

## Permissions
- `chmod 755 file.sh`  
- `chown user:group file.sh`  
- `umask 022`  

## Packages
- `yum install pkg -y`  
- `apt install pkg -y`  
- `rpm -qa | grep pkg`  

## Services & Processes
- `systemctl status httpd`  
- `systemctl start httpd`  
- `ps aux | grep nginx`  
- `top` / `htop`  

## Archiving
- `tar -czvf backup.tar.gz dir/`  
- `tar -xzvf backup.tar.gz`  
- `zip -r backup.zip dir/`  
- `unzip backup.zip`  

## Monitoring
- `df -h` → disk usage  
- `free -m` → memory  
- `uptime` → system load  
- `history` → command history  


# Linux Cheat Sheet

## í´¹ Navigation
- `pwd` â†’ print working directory  
- `ls -l` â†’ list with details  
- `cd /path` â†’ change directory  

## í´¹ Files & Directories
- `mkdir dir1 dir2` â†’ create dirs  
- `touch file.txt` â†’ create file  
- `cp file.txt /tmp/` â†’ copy file  
- `mv file.txt newname.txt` â†’ move/rename file  
- `rm file.txt` â†’ remove file  
- `tree` â†’ show directory tree  

## í´¹ File Types & Links
- `file filename` â†’ check type  
- `ln -s file linkname` â†’ soft link  

## í´¹ Filters & Redirection
- `grep "text" file.txt`  
- `head -n 5 file.txt`  
- `tail -f /var/log/messages`  
- `cut -d: -f1 /etc/passwd`  
- `sed 's/old/new/g' file.txt`  
- `cmd > out.txt` â†’ redirect output  
- `cmd >> out.txt` â†’ append output  

## í´¹ Users & Groups
- `useradd devops`  
- `passwd devops`  
- `groupadd admins`  
- `usermod -aG admins devops`  
- `id devops`  

## í´¹ Permissions
- `chmod 755 file.sh`  
- `chown user:group file.sh`  
- `umask 022`  

## í´¹ Packages
- `yum install pkg -y`  
- `apt install pkg -y`  
- `rpm -qa | grep pkg`  

## í´¹ Services & Processes
- `systemctl status httpd`  
- `systemctl start httpd`  
- `ps aux | grep nginx`  
- `top` / `htop`  

## í´¹ Archiving
- `tar -czvf backup.tar.gz dir/`  
- `tar -xzvf backup.tar.gz`  
- `zip -r backup.zip dir/`  
- `unzip backup.zip`  

## í´¹ Monitoring
- `df -h` â†’ disk usage  
- `free -m` â†’ memory  
- `uptime` â†’ system load  
- `history` â†’ command history  


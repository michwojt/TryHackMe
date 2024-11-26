#Find hidden folders
#Replace target and path to wordlist
gobuster dir -u http://target -w /path

#Enumerate users and other information from the Samba service on the target machine
enum4linux -a target | tee enum4.log
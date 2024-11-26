#Password cracking using list with popular passwords
hydra -l user -P passlist.txt ftp://192.168.0.1

#Cracking passphrase for private key

#Convert key to format recognized by JohnTheRipper
ssh2john.py /path/to/key > hash.txt

#Crack passphrase using wordlist
/run/john/ hash.txt --wordlist=/path
#Network Discovery
#Ping sweep mode. This option disables port scanning and only checks if hosts in the specified range are online. It typically uses ICMP echo requests or TCP SYN/ACK packets to detect live hosts.

nmap -sn 10.10.x.x/24

#Detailed Scan
# -sC Enables the default set of NSE (Nmap Scripting Engine) scripts. These scripts are used to gather additional information, such as service versions, vulnerabilities, or configuration details
# -sV Detects versions of services running on open ports. This provides detailed information about the services (e.g., Apache 2.4.41)
# -p- Scans all 65,535 TCP ports (by default, Nmap only scans the top 1,000 common ports). This ensures no ports are missed, which is useful for comprehensive troubleshooting or security

nmap -sC -sV -p- 10.10.x.x

#Scans for vulnerabilities
nmap -sV --script vuln 10.10.x.x

#Output results to file

nmap -sC -sV -p- 10.10.x.x -oN initial_scan.txt
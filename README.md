# Cybersecurity Home Lab & Network Scanning using Nmap

This project demonstrates the setup of a virtual cybersecurity lab using Ubuntu on VirtualBox and performing basic network reconnaissance using Nmap.

# Lab Setup
- Installed Ubuntu on VirtualBox
- Created a working environment for cybersecurity practice
- Used terminal commands to manage files and directories

# Network Information
- IP Address: 10.0.2.15
- Interface: enp0s3

# Scans Performed

# 1. Localhost Scan
Command:
nmap localhost

Result:
- Port 631 open
- Service: IPP (Internet Printing Protocol)

---

# 2. Network IP Scan
Command:
nmap 10.0.2.15

Result:
- All 1000 scanned ports were closed
- No external exposure detected

---

# 3. Service Version Detection
Command:
nmap -sV localhost

Result:
- Port 631 open
- Service: IPP
- Version: CUPS 2.4

---

# Key Learnings
- Difference between localhost and network IP
- Understanding open vs closed ports
- Service detection using Nmap
- Internal vs external system exposure

---

# Security Insight
The system had a printing service (CUPS) running locally on port 631, but it was not exposed externally through the network IP. This shows how services can run internally without being publicly accessible, improving system security.

---

# Tools Used
- Ubuntu
- VirtualBox
- Nmap

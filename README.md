#  Cybersecurity Home Lab & Network Scanning using Nmap

##  Project Overview

This project demonstrates the setup of a personal cybersecurity home lab using Ubuntu in a virtualized environment and the use of Nmap for network reconnaissance and system analysis.

The goal was to simulate how a **security analyst or attacker evaluates a system**, identifying exposed services, analyzing system behavior, and understanding potential attack surfaces.

This project combines:

* Network scanning (external perspective)
* System inspection (internal perspective)
* Security analysis (risk + mitigation)

---

## 🎯 Objectives

* Build a virtual cybersecurity lab environment
* Perform network reconnaissance using Nmap
* Analyze system exposure from internal vs external viewpoints
* Identify active services and associated risks
* Inspect system behavior using Linux tools
* Develop foundational SOC analyst skills

---

##  Lab Setup

* Installed Ubuntu using VirtualBox
* Created an isolated lab for safe cybersecurity experimentation
* Used Linux terminal for system management and analysis

---

## 🖥️ Lab Environment

* OS: Ubuntu (Virtual Machine)
* IP Address: 10.0.2.15
* Network Interface: enp0s3
* Environment: Controlled virtual lab (safe testing)

---

# 🌐 Network Scanning (Nmap)

## 1. Localhost Scan

Command:
nmap localhost

### Purpose

Scan services running internally on the system.

### Result

* Port 631 open
* Service: IPP (Internet Printing Protocol)

---

## 2. Network IP Scan

Command:
nmap 10.0.2.15

### Purpose

Scan the system as seen from another device on the network.

### Result

* All 1000 scanned ports were closed
* No externally exposed services detected

---

## 3. Service Version Detection

Command:
nmap -sV localhost

### Purpose

Identify service versions for deeper analysis.

### Result

* Port 631 open
* Service: IPP
* Version: CUPS 2.4

---

#  Key Security Insight

### Internal vs External Exposure

This project demonstrates a critical cybersecurity concept:

* Services can run **internally (localhost)**
* But remain **invisible externally (network IP)**

Example:

* CUPS (Port 631) → running locally
* Not accessible via network → reduces attack surface

-> This is a key defense mechanism in secure system design.

---

#  System Analysis (Linux Tools)

## Commands Used

ss -tuln
→ View listening ports

lsof -i
→ Identify processes using network connections

systemctl status
→ Check active services

journalctl
→ Analyze system logs

---

## Findings

* Port 631 → CUPS (local printing service)
* Port 53 → DNS resolver
* Port 5353 → mDNS (Avahi service)
* Services bound to localhost (not externally exposed)
* No open ports detected from external scan

---

# 🔐 Security Analysis

A system’s **attack surface** is defined by its exposed ports and services.

### Observations

* No externally open ports → low exposure
* Local-only services significantly reduce attack risk
* Background services (DNS, mDNS) support system operations

### Potential Risks (If Misconfigured)

* Exposed SSH (Port 22) → brute-force attacks
* Open HTTP (Port 80) → unencrypted traffic
* Outdated services → vulnerability exploitation

---

# ⚠️ Risk Assessment

*  Low external risk (no exposed ports)
*  Minimal attack surface
*  Internal services must still be monitored
*  Future misconfigurations could increase risk

---

#  Logs Analysis

Tool Used:
journalctl

### Observations

* Normal system activity
* No suspicious processes detected
* No indicators of compromise

---

#  Mitigation Recommendations

* Keep services bound to localhost unless required externally
* Configure firewall rules (UFW)
* Regularly update system and services
* Disable unused services
* Monitor logs for unusual activity

---

#  Key Learnings

* Difference between localhost and network scanning
* Understanding open vs closed ports
* Service detection using Nmap
* Importance of minimizing exposed services
* Basic Linux system auditing
* Thinking like both attacker and defender

---

#  Attacker Perspective (Advanced Insight)

If this system exposed even one port (e.g., SSH on Port 22):

An attacker could:

* Attempt brute-force login attacks
* Enumerate system users
* Exploit weak credentials

-> This highlights why minimizing exposure is critical.

---

#  Future Improvements

* Perform vulnerability scanning (`nmap --script vuln`)
* Configure firewall rules (UFW testing)
* Add second VM to simulate attacker machine
* Integrate Wireshark for traffic analysis
* Automate scans using scripts

---

#  Conclusion

This project demonstrates how cybersecurity professionals analyze systems from both internal and external perspectives. Even though services may be actively running, proper configuration ensures they are not externally accessible, significantly reducing security risks.

This lab provides a strong foundation in:

* Network reconnaissance
* System auditing
* Security analysis

---

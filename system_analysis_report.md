# System Analysis Project 

Open Ports Identified: 
- Port 631 (TCP): Running locally for the CUPS printing service
- Port 53 (TCP/UDP): Active for DNS resolution via local resolver
- Port 5353 (UDP): Used for multicast DNS (mDNS) service discovery
- Additional UDP ports observed, likely associated with background system services

Running Services
- Local printing service (CUPS)
- Local DNS resolver
- Multicast DNS service for device/service discovery on the network

System Log Analysis
System logs were analyzed using the Linux command:
journalctl

- Logs primarily showed routine operating system activities
- No suspicious or abnormal behavior was observed during the analysis period

Key Observations:

- Multiple services are actively running on the system
- Port 631 confirms the presence of a local printing service, consistent with scan results
- Most services are bound to localhost (127.0.0.1) or internal interfaces
- This indicates services are not exposed externally, reducing attack surface

Security Interpretation
- Services bound to local interfaces are generally safer because they are not directly accessible from outside the system
- Open ports still represent potential entry points if misconfigured
* Regular monitoring of:
Open ports
Running services
System logs
: is essential for maintaining system security

Conclusion

Open port analysis and log monitoring provide critical visibility into system behavior.
In this case, the system appears to be functioning normally, with services limited to local access and no signs of malicious activity.



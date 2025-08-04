🗓️ Week 11 – Privilege Escalation (Linux & Windows)\
Day 1 – Introduction to Privilege Escalation

    Task: Understand privilege escalation and its importance in attacks.

    Description: I learned how attackers move from a low-privileged shell to SYSTEM or root access. I studied misconfigurations, vulnerable services, SUID binaries, and weak permissions as common escalation paths.

Day 2 – Linux Privilege Escalation

    Task: Practice Linux privilege escalation techniques.

    Description: I used enumeration scripts like LinPEAS and Linux Smart Enumeration (lse) to identify privilege escalation vectors such as SUID misconfigurations, cron jobs, environment variables, and kernel exploits. I also analyzed /etc/passwd, /etc/sudoers, and running processes.

Day 3 – Windows Privilege Escalation

    Task: Identify and exploit privilege escalation paths in Windows.

    Description: I used winPEAS, Seatbelt, and manual inspection to discover paths such as Unquoted Service Paths, AlwaysInstallElevated, Insecure Registry Permissions, and DLL Hijacking. I also tested privilege escalation via token impersonation and UAC bypass.

Day 4 – Kernel Exploits & Tools

    Task: Use public exploits for local privilege escalation.

    Description: I downloaded and compiled local kernel exploits (e.g., Dirty Cow for Linux, MS16-032 for Windows). I learned how to identify kernel versions and match them with applicable CVEs. I tested these in isolated virtual environments to avoid system crashes.

Day 5 – Manual & Scripted Enumeration

    Task: Practice enumeration before escalation.

    Description: I focused on deep system enumeration using tools like whoami, hostname, systeminfo, netstat, and file permission checks. I compared manual vs. automated methods, highlighting when to use each for efficiency and stealth.

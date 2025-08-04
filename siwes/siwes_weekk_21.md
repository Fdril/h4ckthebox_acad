
🗓️ Week 21 – Nibbles Practical: Privilege Escalation

## Day 1 – Reverse Shell & Enumeration
Task: Stabilize shell and gather information.
Description: Spawned a Bash shell, ran enumeration (e.g., sudo -l, lsystem info) and discovered a writable monitor.sh script in /home/nibbler/personal/stuff.
Hack The Box :: Forums
ethicalhacking.sh

## Day 2 – Sudo Script Exploitation (User → Root)
Task: Use misconfigured sudo to escalate privileges.
Description: Appended a reverse shell command to monitor.sh. Used sudo (no password) to run the script as root, capturing the root shell.
Hack The Box :: Forums

## Day 3 – Kernel Exploit (Optional)
Task: Explore alternate escalation via kernel vulnerability.
Description: Downloaded and ran LinEnum.sh to identify the kernel version. Compiled & ran a matching public exploit (e.g. Dirty COW) to escalate to root.
Hack The Box :: Forums
System Weakness

## Day 4 – Flag Extraction & Confirmation
Task: Capture and verify the user and root flags.
Description: Retrieved user.txt from nibbler user home and root.txt from /root, confirming full system compromise.

## Day 5 – Reflection & Notes
Task: Write down lessons learned and remediation.
Description: Documented that weak credentials, file upload vulnerabilities, and misconfigured sudo were the root causes. Recommended patching, strong passwords, and removing unused plugins.

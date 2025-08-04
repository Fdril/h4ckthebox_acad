🗓️ Week 10 – Maintaining Access & Persistence\
Day 1 – Introduction to Persistence Techniques

    Task: Understand how attackers maintain long-term access.

    Description: I studied persistence mechanisms such as startup script modifications, registry edits, scheduled tasks, and implanting backdoors in both Linux and Windows environments. This helps attackers retain access after initial exploitation.

Day 2 – Backdoors & Web Shells

    Task: Learn to deploy backdoors and web shells.

    Description: I practiced using web shells (like C99, WSO) and persistent reverse shells with Netcat and Metasploit. I also tested simple PHP and Python-based web shells in DVWA and custom vulnerable web servers.

Day 3 – Metasploit Persistence Modules

    Task: Explore persistence modules in Metasploit.

    Description: I used Metasploit modules like windows/persistence, windows/manage/schtasks, and linux/autostart to automate persistent access. I noted how different OS versions affect persistence reliability.

Day 4 – Scheduled Tasks & Startup Scripts

    Task: Simulate persistent mechanisms in real OS.

    Description: I created Windows Scheduled Tasks, Linux cron jobs, and RC.local edits to maintain reverse shell connections. I verified reboot resilience and stealth using post-exploitation scripts.

Day 5 – Obfuscation & Evasion Basics

    Task: Learn how to avoid detection during persistence.

    Description: I studied how attackers evade detection by encoding payloads, renaming binaries, and hiding in legitimate services. I experimented with tools like msfvenom, Veil, and PowerShell obfuscation techniques.

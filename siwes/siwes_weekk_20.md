🗓️ Week 20 – Nibbles Practical: Initial Foothold & Enumeration

## Day 1 – Enumeration with Nmap
Task: Scan the target for open ports & services.
Description: Conducted an initial nmap scan (-sV --open) to find exposed services. Identified SSH (22) and HTTP (80) running Apache 2.4.18.
Hack The Box :: Forums+9Medium+9piratemoo+9

## Day 2 – Web Directory Discovery
Task: Discover admin and internal pages.
Description: Used Gobuster to find directories. Located /nibbleblog, /admin.php, and /content paths, indicating a hidden CMS.
Medium
Medium

## Day 3 – Credentials Harvesting
Task: Extract admin username from exposed files.
Description: Viewed users.xml and config.xml under /content/private, discovering the username “admin” and a clue hinting that the password could be “nibbles.”
Medium
Medium

## Day 4 – Admin Portal Access
Task: Login to the admin panel.

Description: Accessed admin.php and logged in using credentials admin:nibbles. CMS confirmed as Nibbleblog version 4.0.3.
Medium

## Day 5 – Shell Upload Exploitation
Task: Achieve remote code execution via plugin.

Description: Uploaded a custom PHP shell via the “My Image” plugin. Uploaded script executed at /content/private/plugins/my_image/image.php, giving a reverse shell.
Medium

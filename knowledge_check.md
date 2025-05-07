
nmap -sV -vv -sC --open 10.129.216.51


PORT   STATE SERVICE REASON         VERSION
22/tcp open  ssh     syn-ack ttl 63 OpenSSH 8.2p1 Ubuntu 4ubuntu0.1 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   3072 4c:73:a0:25:f5:fe:81:7b:82:2b:36:49:a5:4d:c8:5e (RSA)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPfBXQPlIkQDU20q4l5MNZxG3ixQyUahJPci3gvdgKls


80/tcp open  http    syn-ack ttl 63 Apache httpd 2.4.41 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-title: Welcome to GetSimple! - gettingstarted
|_http-server-header: Apache/2.4.41 (Ubuntu)
| http-robots.txt: 1 disallowed entry 
|_/admin/
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel



nmap -sV -p22,80 -A 10.129.216.51
![image](https://github.com/user-attachments/assets/1c1d6033-aa1e-45bf-8690-bdbbf4653980)



![image](https://github.com/user-attachments/assets/0b5e7451-b48c-41cb-9e12-829a5b873e9f)

using CVE detection in NMAP to scan the target.

nmap  -T4 -Pn --script vuln 10.129.42.249

Host is up (0.33s latency).
Not shown: 998 closed tcp ports (reset)
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http
|_http-vuln-cve2017-1001000: ERROR: Script execution failed (use -d to debug)
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-csrf: Couldn't find any CSRF vulnerabilities.
| http-enum: 
|   /admin/: Possible admin folder
|   /admin/index.php: Possible admin folder
|   /backups/: Backup folder w/ directory listing
|_  /robots.txt: Robots file



THE TWO LEADS ON THE TARGET ARE
80/tcp open  http    Apache httpd 2.4.41 ((Ubuntu))
|_http-title: Welcome to GetSimple! - gettingstarted
|_http-server-header: Apache/2.4.41 (Ubuntu)
| http-robots.txt: 1 disallowed entry 
|_/admin/

the website is running on a CMS tech which is _http-title: Welcome to GetSimple! - gettingstarted
and the http is on apache/2.4.41(ubuntu) the OS.

so,
let's try finding the vulnerabilities and public exploit of the CMS

searchsploit getsimple


now we notice the getsimple is vulnerable to this but we don't know the version of the getsimple that is running , so as to know the appropriate vuln associated with it.


getsimple latest edition is vulnerable to RCE.

HTTP Exploration
Since port 80 is open, we know there is likely a web server being hosted at this target IP — the existence of robots.txt and the http- headers confirm this as well. Let’s visit the site and see what we can find.

![image](https://github.com/user-attachments/assets/4596c912-73c4-4417-bf76-028fd8d95573)



Try to visit http://10.129.170.155/theme and see if we can get any more information from this.
Ah! This path seems to be vulnerable to directory traversal. Let’s poke around and see what we can find.
Looking into the Innovation folder, notice the presence of some php files. Let’s set this information to the side for now as we do not have any way to modify files from the browser.
Going back to our nmap scan, notice that robots.txt disallows the traversal of /admin which could be something useful.
Visit http://10.129.130.42/admin to notice a login page. Nice find!
Now  that we have a login page we can take several routes. Perhaps a brute  force attack using Burp Suite or hydra could break us in, however, we  have neither username or password so it would be a shot in the dark.  Let’s see if digging around the site more will unveil more information  leading us to getting into the admin dashboard.

WE are to check the /admin page and the /data page.
![image](https://github.com/user-attachments/assets/5fc9ecf3-1865-4669-8b83-40fc0dbd4afc)

to find the details here lets curl it
curl http://10.129.170.155/data/users/admin.xml
![image](https://github.com/user-attachments/assets/45c25158-385d-4cc4-ac28-35e52a2fa0be)



so we got the USR and the PWD
![image](https://github.com/user-attachments/assets/951b1bae-f1fc-4010-ba1e-14a1feb9d043)

which the password we will have to hash.
using crackstation we got the hash to be dehashed to admin.


PUBLIC EXPLOIT.
using google.
![image](https://github.com/user-attachments/assets/2b593d2d-3d0c-48f9-bae0-339ba8e91d8e)

using exploitdb
![image](https://github.com/user-attachments/assets/5ad55d93-61fa-4b83-9b01-096cd3b6b676)

using searchsploit.
![image](https://github.com/user-attachments/assets/1317b322-5a21-4187-bfe8-169e601aad94)

using metasploit.

![image](https://github.com/user-attachments/assets/ef54a334-c0ab-45ef-8c2c-ca8ffca9b7c9)







🗓️ Week 12 – Password Cracking & Credential Attacks\
Day 1 – Introduction to Password Attacks

    Task: Learn the basics of password cracking and authentication attacks.

    Description: I studied the types of password attacks including brute-force, dictionary attacks, credential stuffing, and rainbow table attacks. I reviewed how weak passwords compromise system security and how password policies can mitigate this.

Day 2 – Offline Cracking with Hashcat & John the Ripper

    Task: Crack password hashes offline.

    Description: I extracted hashes from /etc/shadow, SAM database, and web applications. I practiced cracking MD5, SHA1, and NTLM hashes using Hashcat and John the Ripper, leveraging wordlists like rockyou.txt and using rule-based attacks.

Day 3 – Online Password Attacks (SSH, FTP, Web Login Forms)

    Task: Perform live login brute-force attempts.

    Description: I used Hydra and Medusa to target services like SSH, FTP, and HTTP login forms. I simulated real-world attack scenarios by creating login portals and used tools like Burp Suite Intruder for web-based password spraying.

Day 4 – Credential Harvesting & Reuse

    Task: Extract and reuse credentials from compromised systems.

    Description: I practiced credential dumping using Mimikatz on Windows and creddump7 on Linux. I learned how to extract saved credentials from browsers, Windows LSASS, and config files. I reused harvested credentials in lateral movement exercises.

Day 5 – Password Cracking in Red Team Ops

    Task: Integrate password attacks into red team methodology.

    Description: I explored how credentials are leveraged in post-exploitation to pivot across networks. I practiced using CrackMapExec, Impacket tools, and Kerberoasting to collect and crack service tickets in Active Directory environments.

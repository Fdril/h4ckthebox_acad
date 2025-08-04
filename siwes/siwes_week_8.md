🗓️ Week 8: Web Application Attacks (OWASP Top 10 – Part 2)  
Day 1 – Security Misconfiguration (A05:2021)

    Task: Discover and exploit security misconfigurations in a lab.

    Description: I practiced identifying default credentials, unnecessary services, and open admin panels. I used tools like Nikto and Nmap to detect exposed services and configuration flaws.

Day 2 – Vulnerable and Outdated Components (A06:2021)

    Task: Identify outdated software and libraries in applications.

    Description: I learned how to detect unpatched plugins, old CMS versions, and legacy components using tools like WhatWeb, WPScan, and Retire.js. I documented how attackers can exploit known CVEs.

Day 3 – Identification and Authentication Failures (A07:2021)

    Task: Simulate session hijacking and token replay.

    Description: I tested JWT token manipulation, session fixation, and predictable token values. I also explored 2FA bypass techniques and poor account lockout policies.

Day 4 – Software and Data Integrity Failures (A08:2021)

    Task: Learn how attackers tamper with trusted code.

    Description: I explored insecure software updates and CI/CD misconfigurations. I simulated scenarios where an attacker modifies code packages or injects backdoors via Git or NPM scripts.

Day 5 – SSRF & Logging Issues (A09 & A10:2021)

    Task: Understand and exploit Server-Side Request Forgery (SSRF) and improper logging.

    Description: I triggered SSRF attacks by making the server send internal requests. I also learned how poor logging can help attackers remain undetected and how to mitigate these risks through secure logging policies.

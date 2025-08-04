🗓️ Week 18 – Buffer Overflows & Binary Exploitation\
Day 1 – Understanding Buffer Overflows

    Task: Learn the basic concept of buffer overflows.

    Description: I studied how buffer overflows happen when data exceeds allocated memory space, leading to control of program execution. I explored real-world examples and watched demos for clarity.

Day 2 – Setting Up Exploit Environment

    Task: Prepare a safe lab for buffer overflow practice.

    Description: I set up a vulnerable Linux VM with applications like Vulnserver and Protostar, and used tools like Immunity Debugger, GDB, and Python to begin testing.

Day 3 – Simple Buffer Overflow Practice

    Task: Perform basic buffer overflow in test applications.

    Description: I created scripts to fuzz vulnerable programs, identified crash points, and confirmed control over the EIP (Instruction Pointer) in the debugger.

Day 4 – Shellcode Injection Basics

    Task: Learn how shellcode is used in buffer overflows.

    Description: I experimented with basic shellcode (like calculator payloads) and injected them into memory during the overflow. I studied the use of NOP sleds and bad character filtering.

Day 5 – Real-World Exploit Analysis

    Task: Analyze real buffer overflow exploits.

    Description: I reviewed Proof-of-Concept exploits from Exploit-DB and Metasploit, noting how buffer sizes, return addresses, and shellcode are crafted. I practiced modifying sample exploit scripts.

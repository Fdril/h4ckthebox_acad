# LEARNING DATABASES
## Vulnerability Assessment - Databases -MySQL - SQL - Reconnaissance - Weak Credentials

### learned from HTB retired Machines.

For example, if there is a website that has a small social network and e-commerce section, there
would be a need for several separate sections which should not be inter-accessible:
One containing users' private information, such as email addresses, geolocations, log-in history, and
attached IP addresses, real names, credit card information, and more.
One containing publicly searchable information such as products, services, music, videos, and other types

<img width="765" height="573" alt="image" src="https://github.com/user-attachments/assets/86e74e44-6def-4e65-a977-b58446f061cd" />
if the user wants to search through the list items listed on the page for something in particular,
he will input the object's name in a search bar, which will trigger the same SQL Service to run the SQL query
on behalf of the user. Suppose an entry for the searched item exists in the database, typically under a
different table. In that case, the associated information is retrieved and sent to the web application to be
presented as images, text, links, and other types, such as comments and reviews. 

<img width="794" height="274" alt="image" src="https://github.com/user-attachments/assets/f5e128c6-e87d-482e-af64-b66e63c4f816" />


  # ENUMERATION IN DATABASES
#### performing service scanning using (NMAP) to know the port & services running on the target database

#### -sC -- to perform default script scanning without specifying which scripts to scan
#### -sV -- to perform service detection on those port

```sudo nmap -sC -sV 10.129.18.18```
then we found out this output below.
<img width="682" height="360" alt="image" src="https://github.com/user-attachments/assets/9dff0be7-f9b2-4593-913f-402441e6c935" />

#### Now we need a foothold to communicate with the SQL databases

# FOOTHOLD for communication

In order to communicate with the database, we need to install either mysql or mariadb on our local
machine. To do that, you need to run the following command. 

``` sudo apt update && sudo apt install mysql*  ```

#### after the instlalation is complete let's us run the ``` mysql --help ``` to see how the service works with guidance .
#### the most important and frequent used options are 
#### -h for hostname 
#### -p for password
#### -u for username and for authentication

<img width="623" height="265" alt="image" src="https://github.com/user-attachments/assets/176e2bfc-9850-42ca-b37a-278c1fd9ef7a" />





Note that the MySQL clients usually authenticate with the service with a username/password combination.
However, it is essential to test for passwordless authentication, as there might be an intentional
misconfiguration in the service, which would allow personnel to easily log into the service during the
deployment stage of the project to easily interact with it before making it available to other colleagues.

 ``` mysql -h 10.129.18.18 -u root ``` this is the command to log in as a new user to a particular server without asking for authentication and creds. to login into the server\
 

 [MYSQL CHEATSHEET](https://www.mysqltutorial.org/mysql-cheat-sheet.aspx)


 ## Error or challenges faces.
 <img width="689" height="321" alt="image" src="https://github.com/user-attachments/assets/998970c0-0d34-4301-92e6-168b4f7a83c6" />
 
 ERROR 2026 (HY000): TLS/SSL error: SSL is required, but the server does not support it

## solution.
#### I was able to solve it using the 
#### ```mysql -h 10.129.95.232 -u root --skip-ssl```

______________________________________________________________________________________________________________________________

### Type 
___________
#### help or /? *** for the client side ***
#### help contents *** for the server side ***
______________________________________________________________________________________________________________________________
## the essential commands to be used.
<img width="863" height="261" alt="image" src="https://github.com/user-attachments/assets/645df297-5c08-4ae3-9a8b-3c74f89a8c03" />


### SHOW databases;
<img width="274" height="177" alt="image" src="https://github.com/user-attachments/assets/69ebb803-03ed-4d70-9ead-7fc12512bfb1" />

### USE htb;     *** database name ***
and show tables in the database
### SHOW tables; *** htb databases ***

then we can navigate into the contents of the table and database.
### using select.

```
MariaDB [htb]> select * from config;
+----+-----------------------+----------------------------------+
| id | name                  | value                            |
+----+-----------------------+----------------------------------+
|  1 | timeout               | 60s                              |
|  2 | security              | default                          |
|  3 | auto_logon            | false                            |
|  4 | max_size              | 2M                               |
|  5 | flag                  | 7b4bec00d1a39e3dd4e021ec3d915da8 |
|  6 | enable_uploads        | false                            |
|  7 | authentication_method | radius                           |
+----+-----------------------+----------------------------------+
7 rows in set (1.217 sec)

MariaDB [htb]> select * from users;
+----+----------+------------------+
| id | username | email            |
+----+----------+------------------+
|  1 | admin    | admin@sequel.htb |
|  2 | lara     | lara@sequel.htb  |
|  3 | sam      | sam@sequel.htb   |
|  4 | mary     | mary@sequel.htb  |
+----+----------+------------------+
4 rows in set (0.207 sec) ```



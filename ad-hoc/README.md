## `Prerequisites`

* Ansible must be installed ( only in control machine, remember this is agentless)
* some remote Virtual machines to test, you can use vagrant to build them ( this article would help you get started)
* Make sure that the control machine and VM has SSH connectivity, recommend to enable SSH key-based authentication for efficiency  ( refer this article to enable SSH key based auth)

## `What are Ansible ad hoc commands`

> ad hoc is latin words refers to something done for a very precise and particular purpose.  As the word suggests, ansible ad hoc commands are written for a very particular task. Some of the ad hoc scenarios are given below

1. Just validate the uptime of 1 to 200 remote servers
2. Just get the disk space of remote hosts
3. Ping and validate if the server is alive and responds
4. shutdown multiple remote hosts at a single command

## `Ansible ad_hoc commands Syntax` 

[ad-hoc](https://github.com/lerndevops/ansible/blob/master/static/ad-hoc-syntax.PNG)

## ***below are real-time examples of ansible ad hoc commands*** 

### ***Ansible Ad Hoc Command Examples ***

### ***We presume that you have set up SSH key based auth between the control machine and the hosts. If yes then there is no need to enter the credentials and command would be simple***

> Validate the connection between Ansible control machine and host using ansible ping module

```
ansible multi -m ping -i ansible_hosts --user=vagrant   -- when SSH Keys Configured 
```
```
ansible multi -m ping -i ansible_hosts --user=vagrant --ask-pass  -- when NO SSH keys Configured 
```

> Get the uptime of remote hosts using ansible ad hoc command

> How to check the free memory or memory usage of  hosts using ansible ad hoc command

> ansible ad hoc command to get physical memory allocated to the host

> ansible ad hoc command Execute a command as root user (sudo) on host

> ansible ad hoc command to Execute a command as a different user  (sudo su)

> Create a unix user group with ansible ad hoc command

> Create a unix user with ansible ad hoc command

> Create a Directory with 755 permission using ansible ad hoc command

> Create a file with 755 permission using ansible ad hoc commands

> Change ownership of a file using ansible ad hoc command

> how to check free disk space of hosts using ansible ad hoc commands

> ad hoc command to Install a package using yum command

> ad hoc command to Start or stop the service

> Install and configure python Django application server with ansible ad hoc commands

> Managing Cron Job and Scheduling with Ansible ad hoc

> Running operations in the background asynchronous with Polling ansible

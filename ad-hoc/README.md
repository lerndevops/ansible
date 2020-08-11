## Prerequisites

* Ansible must be installed ( only in control machine, remember this is agentless)
* some remote Virtual machines to test, you can use vagrant to build them ( this article would help you get started)
* Make sure that the control machine and VM has SSH connectivity, recommend to enable SSH key-based authentication for efficiency  ( refer this article to enable SSH key based auth)

## What are Ansible ad hoc commands

> ad hoc is latin words refers to something done for a very precise and particular purpose.  As the word suggests, ansible ad hoc commands are written for a very particular task. Some of the ad hoc scenarios are given below

1. Just validate the uptime of 1 to 200 remote servers
2. Just get the disk space of remote hosts
3. Ping and validate if the server is alive and responds
4. shutdown multiple remote hosts at a single command

![ad-hoc-syntax](https://github.com/lerndevops/ansible/blob/master/static/ad-hoc-syntax.PNG)

## ***below are real-time examples of ansible ad hoc commands*** 

#### ***Ansible Ad Hoc Command Examples***

#### ***We presume that you have set up SSH key based auth between the control machine and the hosts. If yes then there is no need to enter the credentials and command would be simple***


#### ***Validate the connection between Ansible control machine and host using ansible ping module***

```
ansible all -m ping -i ansible_hosts --user=devops   -- when SSH Keys Configured 
```
```
ansible all -m ping -i ansible_hosts --user=devops --ask-pass  -- when NO SSH keys Configured 
```

#### ***Get the uptime of remote hosts using ansible ad hoc command***

     * Ansible provides two major modules to run the command over the host group or on the remote server.

     * Which one to pick is not a big confusion if you know what are they and their capabilities

```
ansible all -m command -a uptime

ansible all -m shell -a uptime

ansible all -a uptime 
```

#### ***How to check the free memory or memory usage of  hosts using ansible ad hoc command***

```
ansible multi -a "free -m" -i ansible_hosts
```

#### ***ansible ad hoc command to get physical memory allocated to the host***

```
ansible multi -m shell -a "cat /proc/meminfo|head -2" 
```
 
#### ***ansible ad hoc command Execute a command as root user (sudo) on host***
 
```
ansible multi -m shell -a "cat /etc/passwd|grep -i vagrant" -b --ask-sudo-pass
```

#### ***ansible ad hoc command to Execute a command as a different user  (sudo su)***

```
ansible app -m file -a "path=/opt/oracle/binaries state=directory mode=0755" -i ansible_hosts -b --become-user=weblogic
```
 
#### ***Create a unix user group with ansible ad hoc command***

```
ansible app -b -m group -a "name=weblogic state=present" 
```
 
#### ***Create a unix user with ansible ad hoc command***

```
ansible app -m user -a "name=weblogic group=weblogic createhome=yes" -b
```
 
#### ***Create a Directory with 755 permission using ansible ad hoc command***

```
ansible app -m file -a "path=/opt/oracle state=directory mode=0755" -b
```

#### ***Create a file with 755 permission using ansible ad hoc commands***

```
ansible app -m file -a "path=/tmp/testfile state=touch mode=0755"
```
 
#### ***Change ownership of a file using ansible ad hoc command***

```
ansible app -m file -a "path=/opt/oracle group=weblogic owner=weblogic" -i ansible_hosts -b
```

#### ***how to check free disk space of hosts using ansible ad hoc commands***

```
ansible multi -a "df -h"
```
 
#### ***ad hoc command to Install a package using yum command***

```
ansible multi -s -m yum -a "name=httpd state=installed"
```
 
#### ***ad hoc command to Start or stop the service***

```
# To Start
ansible multi -s -m service -a "name=httod state=started enabled=yes"

# To Stop
ansible multi -s -m service -a "name=httpd state=stop enabled=yes"
```

#### ***Install and configure python Django application server with ansible ad hoc commands***

    * These are set of commands you have to execute to install the Django application server and Mysql libraries. Here we are using easy_install which is an ansible module it helps to find the easy installation option from ansible galaxy

```
ansible app -s -m yum -a "name=MySQL-python state=present"
ansible app -s -m yum -a "name=python-setuptools state=present"
ansible app -s -m easy_install -a "name=django"
```

#### ***Managing Cron Job and Scheduling with Ansible ad hoc***

```
##Run the job every 15 minutes

ansible multi -s -m cron -a "name='daily-cron-all-servers' minute=*/15 job='/path/to/minute-script.sh'"

##Run the job every four hours

ansible multi -s -m cron -a "name='daily-cron-all-servers' hour=4 job='/path/to/hour-script.sh'"

##Enabling a Job to run at system reboot

ansible multi -s -m cron -a "name='daily-cron-all-servers' special_time=reboot job='/path/to/startup-script.sh'"

##Scheduling a Daily job

ansible multi -s -m cron -a "name='daily-cron-all-servers' special_time=daily job='/path/to/daily-script.sh'"

##Scheduling a Weekly job

ansible multi -s -m cron -a "name='daily-cron-all-servers' special_time=weekly job='/path/to/daily-script.sh'"
```
 
#### ***Running operations in the background asynchronous with Polling ansible***

    * You can use AD-HOC commands to run the operations background using -B and poll the job in the frequent interval -P
    * ansible ad-hoc command  to perform yum update and frequently poll and check the status of the job

```
ansible multi -s -B 3600 -a "yum -y update"
ansible multi -m async_status -a "jid=763350539037"
```

    * By Default the polling interval is 10 seconds, but can modify it using -P option
    * If you set -P as 0 it called as fire and forget, The job id would not be given and you cannot track the job using async_status as shown above.
    * Rebooting the host in the background is the best example for fire and forget
```
ansible all -i inventory -b -B 1 -P 0 -m shell -a "sleep 5 && reboot"
```

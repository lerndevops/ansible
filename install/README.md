## Prerequisites

   1) `PyYAML:` a YAML parser and emitter for the python programming language.
     
   2) `Httplib2:` a comprehensive HTTP client library.
     
   3) `parmiko:` native python SSHv2 protocol library.
    
   4) `Distro:` RHEL/ CentOS/ Debian/ Ubuntu Linux.
     
   5) `Jinja2:` a modern and designer friendly templating language for python.
     
   6) `sshpass:` a non-interactive ssh password authentication.

## Install Ansible on Debian/Ubuntu systems

##### Step 1: First perform an update to the packages
```
$ sudo apt update
```
##### Step 2: Then install the software properties common package.
```
$ sudo apt install software-properties-common  
```
##### Step 3: And install the Ansible personal package archive.
```
$ sudo apt-add-repository ppa:ansible/ansible  
```
##### Step 4: Install the Ansible.
```
$ sudo apt update  
$ sudo apt install ansible  
```

## Install Ansible on RedHat/Centos systems

##### Step 1: Install the EPEL repo
```
[root@ansible-server ~]# sudo yum install epel-release
```

##### Step 2: Install the Ansible package.
```
[root@ansible-server ~]# sudo yum install -y ansible  
```

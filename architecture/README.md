## Ansible Architecture

##### Ansible is a radically simple IT automation engine that automates cloud provisioning, configuration management, application deployment, intra-service orchestration, and many other IT needs.
 
##### Ansible can perform simple configuration management tasks and complex orchestration. It comes with all the features that a configuration management tool should have and also is very easy to learn and implement.
 
##### Ansible works by connecting to your nodes and pushing out small programs, called "Ansible modules" to them. These programs are written to be resource models of the desired state of the system. Ansible then executes these modules, and removes them when finished.

![Ansible Arch](https://github.com/lerndevops/ansible/blob/master/static/Architecture2.PNG)

##### It uses SSH for the communication over SSH channel to get information from the remote machines, to run commands on the remote machines and to copy files.
 
##### It uses SSH for Linux and winrm for windows and there is no need to set up additional software at the target machine and we know SSH comes by default in Linux servers and winrm by default in windows servers.

![Connectivity](https://github.com/lerndevops/ansible/blob/master/static/Connectivity.PNG)


### Ansible has a very simple architecture as they believe in simplicity. Its main components are Inventory, Playbook, and modules

1) `Inventory`: is a text file where we save the host information that we want to manage using Ansible. The default location of the inventory file is /etc/ansible/hosts.

2) `A playbook`: is an organized unit of scripts that defines work for a server configuration managed by the automation tool Ansible. Playbooks are expressed in YAML format and each playbook can contain one or more plays which use modules.

3) `Modules` are something which actually does the stuff and they are what gets executed in each playbook task. There are lots of modules that Ansible gives you to perform different tasks.

4) `Some settings` of ansible can be written in the global ansible.cfg file but we can also write our own ansible.cfg which has higher precedence over the global file.

5) `Ansible` is purely written in `Python` and all things will execute on Python interpreter.

![Ansible Arch1](https://github.com/lerndevops/ansible/blob/master/static/Architecture1.PNG)

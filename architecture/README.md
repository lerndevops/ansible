## Ansible Architecture

##### Ansible is a radically simple IT automation engine that automates cloud provisioning, configuration management, application deployment, intra-service orchestration, and many other IT needs.
 
##### Ansible can perform simple configuration management tasks and complex orchestration. It comes with all the features that a configuration management tool should have and also is very easy to learn and implement.
 
##### Ansible works by connecting to your nodes and pushing out small programs, called "Ansible modules" to them. These programs are written to be resource models of the desired state of the system. Ansible then executes these modules, and removes them when finished.

![Ansible Arch](https://github.com/lerndevops/ansible/blob/master/static/Architecture2.PNG)


##### `Ansible` is purely written in `Python` and all things will execute on Python interpreter.

![Ansible Arch1](https://github.com/lerndevops/ansible/blob/master/static/Architecture1.PNG)


## Ansible Connectivity to remote servers

##### Ansible uses `SSH` for Linux and `WINRM` for windows and there is no need to set up additional software at the target machine and we know SSH comes by default in Linux servers and winrm by default in windows servers.

![Connectivity](https://github.com/lerndevops/ansible/blob/master/static/Connectivity.PNG)




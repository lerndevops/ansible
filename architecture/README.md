## Ansible Architecture

##### Ansible is a radically simple IT automation engine that automates cloud provisioning, configuration management, application deployment, intra-service orchestration, and many other IT needs.
 
##### Ansible can perform simple configuration management tasks and complex orchestration. It comes with all the features that a configuration management tool should have and also is very easy to learn and implement.
 
##### Ansible works by connecting to your nodes and pushing out small programs, called "Ansible modules" to them. These programs are written to be resource models of the desired state of the system. Ansible then executes these modules, and removes them when finished.

<p align="center"> <img src="https://github.com/lerndevops/ansible/blob/master/static/Architecture2.PNG"> </p>


##### `Ansible` is purely written in `Python` and all things will execute on Python interpreter.

<p align="center"> <img src="https://github.com/lerndevops/ansible/blob/master/static/Architecture1.PNG"> </p>


## Ansible Connectivity to remote servers

##### Ansible uses `SSH` for Linux and `WINRM` for windows and there is no need to set up additional software at the target machine and we know SSH comes by default in Linux servers and winrm by default in windows servers.

<p align="center"> <img src="https://github.com/lerndevops/ansible/blob/master/static/Connectivity.PNG"> </p>

## Important terms used in Ansible

| Terms | Explnation | 
| :-------- | :---------------- |
| Ansible server | The machine where Ansible is installed and from which all tasks and playbooks will be ran |
| Inventory | File containing data about the ansible client servers. Defined in later examples as hosts file |
| Module | Basically, a module is a command or set of similar commands meant to be executed on the client-side |
| Task | A task is a section that consists of a single procedure to be completed |
| Handler | Task which is called only if a notifier is present |
| Notifier | Section attributed to a task which calls a handler if the output is changed |
| Tag | Name set to a task which can be used later on to issue just that specific task or group of tasks. |
| Play | Execution of a playbook |
| Playbooks | Playbooks consist of your written code, and they are written in YAML format, which describes the tasks and executes through the Ansible. Also, you can launch the tasks synchronously and asynchronously with playbooks.|
| Fact | Information fetched from the client system from the global variables with the gather-facts operation |
| Role | A way of organizing tasks and related files to be later called in a playbook |
| Plugins | Plugins is a piece of code that expends the core functionality of Ansible. There are many useful plugins, and you also can write your own |
| API's | The Ansible API's works as the transport for the public or private cloud services |
| CMDB | CMDB is a type of repository which acts as a data warehouse for the IT installations |

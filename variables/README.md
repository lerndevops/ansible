## What are  Ansible Variables & purpose

*  **Ansible offers the possibility to using variables as needed.**

*  **Ansible uses variables to enable more flexibility in any ansible plays.** 

*  **Variable in playbooks are very similar to using variables in any programming language.**

*  **It helps you to use and assign a value to a variable and use that anywhere in the playbook**

*  **One can put conditions around the value of the variables and accordingly use them in the playbook.**

*  **Ansible variables help to determine how the tasks execute on different systems based on the values assigned to these variables.**

*  **Ansible variables can be used to loop through a set of given values, access various information like the hostname of a system and replace certain strings in templates by system specific values etc. ...**

*  **Variables in ansible are available for any ansible play through built in, discovered, inventory, playbooks, variable files & command line.**

```
NOTE:  variable names have some restrictions in Ansible

Variable names should be letters, numbers, and underscores. Variables should always start with a letter.
```


## How & Where to define these variables in Ansible

*  Discovered Variables ( Facts ) 
*  Variables Defined in Inventory
    *   Group variables 
    *   Host variables
*   Variables Defined in Playbooks
*   Built-in Variables
*   Setting Variables on the Command Line
*   Using Variables: Jinja2 ( templates )
*   Variable Precedence: Where Should I Put A Variable?


## Discovered Variables ( Facts )

> Discovered variables (Facts) are not set/defined by user. 

> Variables that are generated from target systems when an ansible play runs are known as discovered variables or Facts

> Facts are information derived from speaking with your remote systems

> We can find a complete set under the ansible_facts variable, most facts are also ‘injected’ as top level variables preserving the ansible_ prefix

> For example, It can be IP address of the remote host, or what the operating system is or which architecture the remote host is etc. … 

> To see what information is available, we can try the following in a play:
```
                  - debug: var=ansible_facts 
```
To see the ‘raw’ information as gathered:
```
                  ansible hostname -m setup
```

```
- name: print some facts                   
  hosts: localhost                         
  connection: local                        
  gather_facts: True                       
  tasks:                                   
   - debug: var=ansible_distribution       
   - debug: var=ansible_architecture       
   - debug: var=ansible_default_ipv4.address
   - command: cat /etc/os-release
     register: out
   - debug: var=out.stdout
     when: ansible_distribution == 'SLES'
   - command: echo "hello"
     register: out
   - debug: var=out.stdout
     when: ansible_distribution == 'Redhat'
```
## Variables Defined in playbooks

> we can define variables in playbook also, which normally is used for operation. Again, there are also two ways to define ansible playbook specific variables.

1) ad-hoc way (writing vars inside plabooks)

```
- name: variables in playbook
  hosts: localhost
  connection: local
  vars:
     abc: 'set-via-vars-in-playbook'
     hello: "world"
     a: 15
  tasks:
    - debug:
         var: abc,hello,a
```

2) Ansible Best Practice (variable imported from a file)

```
- name: variables in playbook
  hosts: localhost
  connection: local
  vars_files:
     - ./myvars1.yml
  tasks:
    - name: variables from vars_files module   
      debug:
        var: feeling,shero

    - name: variables imported with include_vars module 
      include_vars: ./myvars2.yml
    - debug:  var=user,group

```
## Built in Variables / Special Variables 

> These variables cannot be set directly by the user; Ansible will always override them to reflect internal state.

| Parameter |  Description |
|:--------- | :------------ |
| hostvars 	|  A dict whose keys are Ansible host names and values are dicts that map variable names to values |
| inventory_hostname | Name of the current host as known by Ansible |
| group_names |	A list of all groups that the current host is a member of |
| groups | 	A dict whose keys are Ansible group names and values are a list of hostnames that are members of the group. Includes all and ungrouped groups: {"all": […], "web": […], "ungrouped": […]} |
| play_hosts |	A list of inventory hostnames that are active in the current play |
| ansible_version |	A dict with Ansible version info: {"full": 1.8.2", "major": 1, "minor": 8, "revision": 2, "string": "1.8.2"} |
| ansible_host | The name of the host to connect to, if different from the alias you wish to give to it. |
| ansible_ssh_port | The ssh port number, if not 22 | 
| ansible_ssh_user | The default ssh user name to use. | 
| ansible_ssh_pass | The ssh password to use (this is insecure, we strongly recommend using --ask-pass or SSH keys) }
| ansible_sudo_pass | The sudo password to use (this is insecure, we strongly recommend using --ask-sudo-pass) |
| ansible_connection | Connection type of the host. Candidates are local, ssh or paramiko. |
| ansible_ssh_private_key_file | Private key file used by ssh.  Useful if using multiple keys and you don't want to use SSH agent. |
| ansible_python_interpreter | The target host python path. This is useful for systems with more than one Python or not located at "/usr/bin/python" such as \*BSD, or where /usr/bin/python is not a 2.X series Python. |

> for more info & more Special Variables [LOOK HERE](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html)

## Variables Defined in Inventory

> Are user defined variables

> We already know Inventory is set of hosts ( target servers ) defined in an inventory file, and set of hosts in an inventory can be grouped together. So 

> We have a flexibility to define set of variables against each host defined in the inventory file, and also grouping set of hosts in an inventory is possible which allows us to define the variables against a particular group.

> So how to define these host variables & group variables ?

> There are two ways we can define these host & group variables

*  ad hoc way 
*  ansible best practice

#### Host Variables 

1) **ad-hoc Way is to define them in the inventory files directly, like below**

```
   vi /path/to/inventory
	192.168.25.33  role=appserver app=testapp env=dit
	192.168.25.36  role=webserver app=testapp env=dit
```
2) **Ansible Best Practice**

###### To better maintain the playbooks, it would be better to define host specific variables separated from inventory file. Ansible provides mechanism to let you define variables in host_vars folder. For example:
```
---
# cd /path/to/inventory/
  mkdir host_vars/ ; cd host_vars
        
  vi 192.168.25.33.yml
            role: appserver
            app: testapp
            env: dit
            
 Note: host_vars directory must be beside to inventory file
```
#### Group Vriables 

1) **ad-hoc Way -- is to define them in the inventory files directly, like below**
```
vi /path/to/inventory

[group1]
host1
host2

[group1:vars]
role=pocserver
env=poc
```

1) **Ansible Best Practice**

###### Similar to host_vars directory we can have group_vars & define all variables under groupname.yml file:
###### A default all.yml can be create for all groups in inventory file. 
```
---
# cd /path/to/inventory/
  mkdir group_vars/ ; cd group_vars
        
  vi all.yml  ## varibels for all groups in inventory 
  vi webservers.yml ## variables specific to a group called webservers
  
# vi webservers.yml  or vi all.yml
     role: pocservers
     app: myapp
     env: poc
     
Note: group_vars directory must be beside to inventory file
```





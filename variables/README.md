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


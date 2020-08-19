## What are  Ansible Variables & purpose

#### Variable in playbooks are very similar to using variables in any programming language. It helps you to use and assign a value to a variable and use that anywhere in the playbook. One can put conditions around the value of the variables and accordingly use them in the playbook

*  Ansible offers the possibility to using variables as needed.

*  Ansible uses variables to enable more flexibility in any ansible plays. 

*  Variable in playbooks are very similar to using variables in any programming language.

*  It helps you to use and assign a value to a variable and use that anywhere in the playbook

*  One can put conditions around the value of the variables and accordingly use them in the playbook.

*  Ansible variables help to determine how the tasks execute on different systems based on the values assigned to these variables.

*  Ansible variables can be used to loop through a set of given values, access various information like the hostname of a system and replace certain strings in templates by system specific values etc. ... 

*  Variables in ansible are available for any ansible play through built in, discovered, inventory, playbooks, variable files & command line.

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


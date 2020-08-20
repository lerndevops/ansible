### The most common strategies for debugging Ansible playbooks are using the modules given

## Debug and Register

#### These two are the modules available in Ansible. For debugging purpose, we need to use the two modules judiciously. Examples are demonstrated below.

## Use Verbosity

#### With the Ansible command, one can provide the verbosity level. You can run the commands with verbosity level one (-v) or two (-vv).

## Important Points

#### Let's go through a few examples to understand a few concepts.

#### `If you are not quoting an argument that starts with a variable. For example,`

```
vars:
  age_path: {{naresh.name}}/demo/

{{naresh.name}}
```
#### This will throw an error.

```
vars:
  age_path: "{{naresh.name}}/demo/"

## How to use register  Copy this code into a yml file say test.yml and run it

---
#Tsting
- hosts: tomcat-node
  tasks:
    - shell: /usr/bin/uptime
      register: myvar
    - name: Just debugging usage
      debug: var=myvar

```

## Common Playbook Issues

#### In this section, we will learn about the a few common playbook issues. The issues are:
   * Quoting
   * Indentation

#### Playbook is written in yaml format and the above two are the most common issues in yaml/playbook.

#### `Yaml` does not support tab based indentation and supports space based indentation, so one needs to be careful about the same.

#### `Note` – once you are done with writing the yaml , open this site(https://editor.swagger.io/) and copy paste your yaml on the left hand side to ensure that the yaml compiles properly. This is just a tip.

#### `Swagger` qualifies errors in warning as well as error.

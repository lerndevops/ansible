## Working with inventory files

> **An inventory file is the source of truth for Ansible (there is also an advanced concept called dynamic inventory, which we will cover later).**

> **It follows the INI format and tells Ansible whether the remote host or hosts provided by the user are genuine or not.**

> **Ansible can run its tasks against multiple hosts in parallel. To do this, you can directly pass the list of hosts to Ansible using an inventory file.**

> **Ansible allows you to group your hosts in the inventory file; the file passes the group name to Ansible. Ansible will search for that group in the inventory file and run its tasks against all the hosts listed in that group.**

> **You can pass the inventory file to Ansible using the `-i` or `--inventory-file` option followed by the path to the file.**

> **If you do not explicitly specify any inventory file to Ansible, it will take the default path from the `host_file` parameter of `ansible.cfg`, which defaults to `/etc/ansible/hosts`**

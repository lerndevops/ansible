## Configuring Ansible

##### An Ansible configuration file uses an INI format to store its configuration data. In Ansible, you can overwrite nearly all of the configuration settings either through Ansible playbook options or environment variables. 

##### While running an Ansible command, the command looks for its configuration file in a predefined order, as follows:

![ansible-cfg](https://github.com/lerndevops/ansible/blob/master/static/ansible-config.PNG)

##### If you have installed Ansible through your `system's package manager OR pip`, then you should already have a copy of `ansible.cfg` under the `/etc/ansible directory`. 

##### If you installed Ansible through the `GitHub repository`, you can find `ansible.cfg` under the `examples directory`, where you cloned your Ansible repository.

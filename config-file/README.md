## Configuring Ansible

##### An Ansible configuration file uses an INI format to store its configuration data. In Ansible, you can overwrite nearly all of the configuration settings either through Ansible playbook options or environment variables. 

##### While running an Ansible command, the command looks for its configuration file in a predefined order, as follows:

![ansible-cfg](https://github.com/lerndevops/ansible/blob/master/static/ansible-config.PNG)

##### If you have installed Ansible through your `system's package manager OR pip`, then you should already have a copy of `ansible.cfg` under the `/etc/ansible directory`. 

##### If you installed Ansible through the `GitHub repository`, you can find `ansible.cfg` under the `examples directory`, where you cloned your Ansible repository.

## Configuration using ansible.cfg

##### Ansible has many configuration parameters; you might not need to use all of them. We can consider some of the configuration parameters, as follows, and see how to use them:

1) **`hostfile:` This parameter indicates the path to the inventory file. The inventory file consists of a list of hosts that Ansible can connect to. We will discuss inventory files in detail later in this chapter. Consider the following command line for example:**

```
hostfile = /etc/ansible/hosts
```

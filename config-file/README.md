## Configuring Ansible

##### An Ansible configuration file uses an INI format to store its configuration data. In Ansible, you can overwrite nearly all of the configuration settings either through Ansible playbook options or environment variables. 

##### While running an Ansible command, the command looks for its configuration file in a predefined order, as follows:

![ansible-cfg](https://github.com/lerndevops/ansible/blob/master/static/ansible-config.PNG)

##### If you have installed Ansible through your `system's package manager OR pip`, then you should already have a copy of `ansible.cfg` under the `/etc/ansible directory`. 

##### If you installed Ansible through the `GitHub repository`, you can find `ansible.cfg` under the `examples directory`, where you cloned your Ansible repository.

## Configuration using ansible.cfg

##### Ansible has many configuration parameters; you might not need to use all of them. We can consider some of the configuration parameters, as follows, and see how to use them:

1) **`hostfile:` This parameter indicates the path to the inventory file. The inventory file consists of a list of hosts that Ansible can connect to. We will discuss inventory files in detail later in this chapter. the following line for example:**

```
hostfile = /etc/ansible/hosts
```

2) **`library:` Whenever you ask Ansible to perform any action, whether it is a local action or a remote one, it uses a piece of code to perform the action; this piece of code is called a module. The library parameter points to the path of the directory where Ansible modules are stored. the following line for example:**

```
library = /usr/share/ansible
```

3) **`forks:` This parameter is the default number of processes that you want Ansible to spawn. It defaults to five maximum processes in parallel. Consider the following command line for example:**

```
forks = 5
```

4) **`sudo_user:` This parameter specifies the default user that should be used against the issued commands. You can override this parameter from the Ansible playbook as well (this is covered in a later chapter). Consider the following command line for example:**

```
sudo_user = root
```

5) **`remote_port:` This parameter is used to specify the port used for SSH connections, which defaults to 22. You might never need to change this value unless you are using SSH on a different port. Consider the following command line for example:**

```
remote_port = 22
```

6) **`host_key_checking:` This parameter is used to disable the SSH host key checking; this is set to True by default. Consider the following command line for example:**

```
host_key_checking = False
```

7) **`timeout:` This is the default value for the timeout of SSH connection attempts:**

```
timeout = 60
```

8) **`log_path:` By default, Ansible doesn't log anything; if you would like to send the Ansible output to a logfile, then set the value of log_path to the file you would like to store the Ansible logs in. Consider the following command line for example:**

```
log_path = /var/log/ansible.log
```

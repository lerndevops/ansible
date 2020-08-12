### To install Ansible offline on the private network, where public network is prohibited and internet is also not connected.

## Prerequisites:
#### `Distro:` RHEL/CentOS/Debian/Ubuntu Linux

1) Jinja2: A modern and designer friendly templating language for Python.
2) PyYAML: A YAML parser and emitter for the Python programming language.
3) parmiko: Native Python SSHv2 protocol library.
4) httplib2: A comprehensive HTTP client library.

### `Step 1.` Take a Linux instance from AWS EC2/Google Compute Engine.

> Create a instance in your private VPN and connect it using putty or any such ssh client using the pem or ppk key.

### `Step 2.` Download the necessary packages offline to your system or PC.

> Download the below mentioned packages to install ansible on centos or rhel vm. Save the packages after download on system or PC.

[python-crypto!](https://www.rpmfind.net/linux/rpm2html/search.php?query=python-crypto)

![python-httplib](https://www.rpmfind.net/linux/rpm2html/search.php?query=python-httplib&submit=Search+...&system=&arch=)

![python-jinja2](https://www.rpmfind.net/linux/rpm2html/search.php?query=python-jinja2&submit=Search+...&system=&arch=)

![python-keyczar](https://www.rpmfind.net/linux/rpm2html/search.php?query=python-keyczar&submit=Search+...&system=&arch=)

![sshpass](https://www.rpmfind.net/linux/rpm2html/search.php?query=sshpass&submit=Search+...&system=&arch=)

##### Download the packages to your home system or PC.

### `Step 3.` Push the packages to the Linux instance using ftp.

### `Step 4.` Install the packages as following.

> After sending the packages to the linux instance using ftp. Make a directory and save all the above downloaded packages into that directory. Run the below commands to install ansible locally on the linux vm.
```
$sudo mkdir ansibleinstallation
$sudo mv abovepackages.tar /ansibleinstallation
$sudo yum localinstall -y python-crypto2.6–2.6.1–2.el6.x86_64.rpm python-httplib2–0.7.41.el6.art.noarch.rpm python-jinja2–26–2.6–3.el6.noarch.rpm python-keyczar-0.71c 1.el6.noarch.rpm sshpass-1.05–5.el6.art.x86_64.rpm
$ sudo yum localinstall ansible*
```

### `Step 5.` Installation of Ansible as above comes with no hosts file and no configuration file.

> Manually create the hosts or inventory file and configuration file as required.

```
#mkdir /etc/ansible
#cd ansible
#vi ansible/hosts ###use as inventory file
#vi /etc/ansible/ansible.cfg

Use the below link to copy the ansible.cfg and save your file.
https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg
```

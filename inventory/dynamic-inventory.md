## Dynamic Host Inventory File

> In a configuration – especially a cloud setup such as AWS where the inventory file keeps constantly changing as you add or decommission servers, keeping tabs on the hosts defined in the inventory file becomes a real challenge. It becomes inconvenient going back to the host file and updating the list of hosts with their IP addresses.

> And this is where a dynamic inventory comes to play. So what is a dynamic inventory? A dynamic inventory is a script written in Python, PHP, bash or any other programming language. 

> It comes in handy in cloud environments such as AWS where IP addresses change once a virtual server is stopped and started again.

> Ansible already has developed inventory scripts for public cloud platforms such as Google Compute Engine, Amazon EC2 instance, OpenStack, RackSpace, cobbler, among others.


### advantages of a dynamic inventory over a static inventory?

1.   Dynamic inventories do a perfect job of reducing human error as information is gathered using scripts.
2.   Minimal effort is required in managing inventories.

> You can write your own customize dynamic inventory in a programming language of your choice. The `inventory should return a format in JSON` when appropriate options are passed.

## Creating A Dynamic Inventory Script

### Output Requirements

#### Whatever language you choose to write your script in, if passed the --list flag, it should output JSON in this format:

      *  a dictionary of groups (i.e development, production)

      *  a list of hosts in each group

      *  a dictionary of variables

      *  a _meta dictionary

      *  hosts and the hostvars

> As pointed above, the output `must` be in `JSON` format.

```
{
  "webservers": {
    "hosts": [
      "webserver1.example.com",
      "webserver2.example.com"
    ],
    "vars": {}
  },
  "database_servers": {
    "hosts": [
      "mysql_db1",
      "mysql_db2"
    ],
    "vars": {}
  },
  "_meta": {
    "hostvars": {
      "mysql_db2": {},
      "webserver2.example.com": {},
      "webserver1.example.com": {}, 
      "mysql_db1": {}
    }
  }
}
```

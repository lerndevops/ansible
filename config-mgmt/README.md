### before we understand what is configuration management, let's first understand some basics as below 

## what is change management ? 

##### Change management is the process that helps to implement a change to Production system/server, typically it talks about 

	* why the change is required ?
	* what is the change about ?
	* when it should be implemented ?
	* who will implement it ? 
	* how much time required to implement the change ?
	* are the implementation steps documented ? 
	* how to rollback if any issues during the change implementation ? 
	* do we have all approvals (from client & management ) to implement the change ?
	* who will ensure the system/server back online after the change is implemented ? 


##### `technically:` Change management is the process, tools and techniques to manage the people side of change to achieve the required business outcome. 

##### Change management focuses on the people impacted by the change. Any change to processes, systems, organization structures and/or job roles will have a technical side and a people side.

## what is a change on server/computer/system ?

##### `in simple words:` any action that we perform on a server / system that alters the state of the server/system is called a change. 

```
such as: 
	* create/modify/delete/update a file OR a directory
	* install/deploy a new software/application
	* uninstall a software/application 
	* upgrade a software
	
	  etc....
```

## what is configuration ? 

##### `Technically:` Configuration is the manner in which components are arranged to make up the computer system. Configuration consists of both hardware and software components. Sometimes, people specifically point to hardware arrangement as hardware configuration and to software components as software configuration. 

## what is configuration change ?

##### `in simple words:` any change that we do to a system can be called as configuration change on system/server.

## What is Configuration Management ?
 
> Configuration Management can be considered as a process that manages the configuration of IT infrastructures, like operating systems, network devices, applications, cloud services, and software.
 
> By enabling you to deliver better software faster, configuration management helps lay the foundation for DevOps. 
 
> Configuration Management is important because it enables the ability to scale the infrastructure and software systems without having to correspondingly scale administrative staff to manage those systems.

## Benefits of configuration and change management for servers

1. It helps to maintain the consistency of the servers.
2. It increases efficiency since most of the processes are automated as opposed to manual processes.
3. It makes it easy to scale infrastructure without having to scale staff since the processes are automated.
4. It reduces the chances of errors since most of the processes are automated and do not require human interference.
5. It saves cost for staffing and repair of the server in the case of failure and the need to repair or set up the server again manually.
6. It ensures that the server can be easily brought back up in case of system downtime since there is a baseline for the server configurations and a record of all changes reports for the server.

## Tools for configuration management

> `Ansible:` Ansible is a tool for automation task such as configuration management, deployment of applications, orchestrating and provisioning of instances. It is an Open Source tool.

> `Puppet:` Puppet is a configuration management tool that is used for deployment, configuration, and management of servers. With puppet, you can define distinct configurations for several hosts and continuously check their state to ensure that they correspond to the defined acceptable system state. Puppet can also be used to scale systems up and down dynamically.

> `CFEngine:` CFEngine is an IT infrastructure automation and Continuous Operations framework that helps engineers, system administrators and other stakeholders in an IT organization manage IT infrastructure while ensuring service levels and compliance.
CFEngine runs on the smallest embedded devices, on servers, in the cloud, and on mainframes, easily handling tens of thousands of hosts. It is available as both open source and commercial software — CFEngine

> `Chef:` Chef is another automation tool that provides a way to define infrastructure as code. It uses a Master-Slave Architecture. The Master and Slave communicate through an SSL.

> `Salt:` It is an Open Source configuration management and remote execution application that implements “Infrastructure as a code”.

## Things to consider when choosing a configuration management tool

> `Robustness:` When choosing a configuration management tool, you should make sure the tool is robust enough to handle all the tasks that your organisation's infrastructure need it for. It should also enable you to scale your organisation’s infrastructure easily.

> `Flexibility:` The tool should be able to integrate well with other tools that you are currently using or planning to use in the future.

> `Good feedback loop:` The tool you are using should be able to provide feedback that is understandable and enables humans using it to understand the process that is being executed.

> `The complexity of the organization’s IT platform:` The complexity of the organisation’s infrastructure should determine the type of tool that is being used. If the infrastructure is small and does not need a lot of complexity to manage it, then a simple tool should be used and vice versa.

> `Cost-effectiveness:` The cost of the tool should also be considered when making a choice of configuration tools. Tools whose cost can easily be managed should be chosen. They are so many open source tools for configuration management, however, before using any of them, one should ensure that the tools are properly maintained and satisfy the need of the organisation’s infrastructure.

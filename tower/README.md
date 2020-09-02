## Introduction to Ansible Tower

> ****Ansible Tower is an enterprise solution for Ansible by RedHat. It has a web console and REST API to operate Ansible across team, organization, and enterprise. It also provides role-based access control,  job scheduling, integrated notification, and graphical inventory management. It is a centralized hub for all our automation tasks. It can be easily integrated with third-party tools and processes using the REST API and CLI.***

## Why Do We Need Tower in Ansible?

1. It becomes very difficult to manage a large infrastructure. There are different users and groups who need a different levels of access to use Ansible. 

2. Also, we have to integrate these tools with other third-party tools to operate the IT infrastructure as per defined standard like integration with SCM tools for Ansible playbook, integration with ticketing tools to create tickets if any tasks fail or notify the user over the mail or using messaging apps, etc.  

3. We also need an audit trail for proper tracking who ran what job and when. 

4. And one more important thing is product support. These features are not available in Ansible and can only be achieved by Ansible Tower.


<p align="center"> <img src="https://github.com/lerndevops/ansible/blob/master/static/Tower-Featurs.PNG"> </p>

### `Ansible Dashboard`

> We get an Ansible Dashboard as soon as we login to the Ansible Tower web console.  Ansible Dashboard provides a graphical view of job status, brief about recent job runs and templates. It also shows no. of hosts, failed hosts, inventories, projects, etc. We can adjust the job status setting as per our requirement as well.

### `Workflow Editor`

> Ansible Tower provides a workflow editor that helps us to connect multiple playbooks, updates, and workflows even they run as a different user or they use different inventories or uses different credentials. We can create dependencies such as running a playbook depends upon the success or failure of other playbooks. We can easily chain different playbooks created and maintained by different teams to setup a base system configuration and deploy an application.

### `Tower Clustering`

> We must have more than one Ansible Tower to achieve high availability and better performance. We can create an Ansible Tower cluster by adding multiple Ansible Tower nodes to it. We can easily scale our Ansible automation as per requirement and it also allows us to reserve capacity for teams, jobs, and remote execution for access across the enterprise. Ansible Automation architecture supports up to 200k nodes with 20 cluster nodes.

### `Real-Time Analysis`

> It provides a real-time update about the completion of Ansible plays and tasks, success, and failure of each host. We can see the status of our automation and which is going to run next. We can also see the status of source control updates or client inventory refreshes.


### `Audit Trail`
> In an organization, it is most important to track a log of changes made to an application so that if something bad happens to the application we can check the logs and correct the changes made by mistake. Ansible Tower logs all the details about any changes made to the Ansible such as who has made the changes, what are the changes have been applied to a job or when it happened. Ansible Tower keeps track of all the changes made to Ansible Tower itself such as job creation details, inventory changes, etc. We can see this audit trail in Activity Stream in Ansible Tower web console. It can be also integrated with the existing logging application used in the organization to perform a better analysis of automation and event correlation to generate ticker in any ITSM tool.

### `Job Scheduling`

> We can schedule jobs to run a playbook, update the cloud inventory as well as source control at a specific time, daily, weekly using Ansible Tower, Ansible does not have this capability. We can also set a frequency of the scheduled jobs. We can integrate it with a continuous delivery pipeline as well.

### `Self-Service`

> Ansible Tower provides self-service capability as well for example we can delegate read-only access to L1 users to keep eye on Ansible Dashboards or run simple jobs like adding new users, groups, changing the password, etc. It also allows us to delegate control to Developers and QA users to setup their own environment for development and testing and run their jobs without any intervention of Ansible Administrator.

### `Notification Integration`

> We can integrate Ansible Tower with email, messaging app such as Slack, HipChat, etc., SMS, PagerDuty and more to notify users or teams about the success or failure of the jobs. We can also integrate Ansible tools to send a notification to a custom webhook to trigger other tools in our infrastructure, for example, if any jobs fail it will send a notification to any ITSM tool to create an incident of the job failure.

### `REST API and CLI Tool`

> We can easily interact with Ansible Tower using the REST API. It helps to easily integrate it with other third-party tools that support REST API. If we want to integrate it with any command tools that are possible using Ansible Tower’s CLI tool.

### `Management and Tracking of our Inventory`

> We can manage our entire infrastructure inventory using Ansible Tower whether it is hosted on any Public Cloud platform such as Amazon Web Services, Microsoft Azure, GCP, etc. or hosted on our private cloud like OpenStack, VMware environment. It continuously keeps syncing our cloud inventory and we can also request configuration on demand.

### `Execute Commands Remotely`

> We can run tasks directly from Ansible Tower using Run Command feature on any host or group of hosts in our inventory. It is the same as running Ad-hoc command in Ansible.

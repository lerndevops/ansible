#### Ansible stops playbook execution on a task failure. You can choose to `ignore errors`. But what if you need a more grained approach to error handling. Let’s say you have a playbook which runs a group of tasks inside a loop. You want to interrupt the loop in the event of a failure but to continue playbook execution.

#### `Blocks/rescue/always` allow for logical grouping of tasks and in play error handling. 

#### The tasks in the `block` would execute normally, if there is any error the `rescue` section would get executed with whatever you need to do to `recover from the previous error`. The `always` section runs no matter what previous error did or did not occur in the `block` and `rescue` sections


## What is Ansible Block?

> **Ansible block is a feature that makes the grouping of tasks possible, which can be treated in the same way as a task is treated by the Ansible system. That means like the way we can set data or derivatives or any other feature parameter for a task, in a similar way we can do with Ansible block. Adding to this, we have parameters that are making error handling possible.** 

#### Below are the keywords which are used in Ansible blocks

* `Block:` Under this parameter, we define the tasks and other task-related parameters. All the tasks under a block are treated as a group and accordingly, we can set feature parameters on this

* `Rescue:` Under this parameter, we define all such tasks which need to be executed whenever the block section fails. This makes the playbook to continue to run and not halt at the failure of a But make note that, bad syntax or unreachable host are not rescuable.

* `Always:` Under this parameter, we defined all those tasks which will run despite the success or failure of the block.


## How Does Ansible Block Work?

> To make Ansible block run successfully, we need to pay more attention to syntax and indentation, as a feature parameter will be realized according to its indentation in the playbook. All the conditionals, become, etc. related parameters defined at the task level will run at that level and all parameters defined on block level will be realized on all tasks grouped by block. Precedence will be given to task level if defined at both task and block level.

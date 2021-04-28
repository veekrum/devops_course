# ANSIBLE
## Ansible
    - Ansible is an open source IT automation engine that automates provisioning, configuration management, application deployment, orchestration, and many other
      IT processes.
    - Ansible is agentless, which means the nodes it manages do not require any software to be installed on them
    - Ansible uses SSH protocol to connect to servers and run tasks

## What can we do?
    - install any software
    - automate daily tasks
    - provision infrastructure
    - improve security and compliance
    - patch systems
    - share automation across your organization.

## How does it Works?
    - Ansible works by connecting to your nodes and pushing out small programs, called module
    - Ansible then executes these modules and removes them when finished.
    - Without modules, you’d have to rely on ad-hoc commands and scripting to accomplish tasks. 
    - Ansible manages the inventory file which contains the node information
    - It Uses human-readable YAML templates so users can program repetitive tasks
    - Ansible contains built-in modules that you can use to automate tasks
    - Ansible modules can be written in any language that can return JSON, such as Ruby, Python, or bash. Windows automation modules are even written in Powershell. 

## Ansible Ad-hoc commands
    - This is fine for a one time task
    - More complex will require the use of an Ansible Playbook.

## Ansible Playbooks
    - A playbook is a YAML file containing 1 or more plays, and is used to define the desired state of a system.
    - When Ansible runs, it is able to keep track of the state of the system

## Variables
    - Variables are used to store values that can be later used in your playbook

## Handler
    - It is used to run a specific task only after a change has been made to the system. 
    - They are triggered by tasks and run once, at the end of all of the other plays in the playbook. 

## Ansible Roles
    - are a special kind of playbook that is fully self-contained and portable with the tasks, variables, configuration templates, and other supporting files that are needed to complete a complex orchestration. 



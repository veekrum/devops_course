Roles let you automatically load related vars_files, tasks, handlers, and other Ansible artifacts based on a known file structure. Once you group your content in roles, you can easily reuse them and share them with other users.

### Role Directory Structure
An Ansible role has a defined directory structure with seven main standard directories. You must include at least one of these directories in each role. You can omit any directories the role does not use. For example:

```
site.yml
webservers.yml
fooservers.yml
roles/
    common/
        tasks/       the main list of tasks that the role executes.
        handlers/    handlers, which may be used within or outside this role.
        library/     modules, which may be used within this role
        files/       files that the role deploys.
        templates/   templates that the role deploys.
        vars/        other variables for the role
        defaults/    default variables for the role
        meta/        metadata for the role, including role dependencies
    webservers/
        tasks/
        defaults/
        meta/
```

### Creating a role
```shell
cd <playbook root directory>
ansible-galaxy init <role-name>
```

### Fetching role from internet
```shell
ansible-galaxy install <role-name>
```

### Storing and finding roles
- roles/
- /etc/ansible/roles

### Using Roles
- at the play level with the `roles` option
- at the tasks level with `include_role` (`import_role`)

### Order of execution
- `pre_tasks`
- `handlers` triggered by pre_tasks.
- Each role listed in `roles`:, in the order listed. Any role dependencies defined in the role’s meta/main.yml
- `tasks`
- `handlers` triggered by the roles or tasks.
- `post_tasks` defined in the play.
- `handlers` triggered by post_tasks.

### Resources
https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html
https://docs.ansible.com/ansible/latest/galaxy/user_guide.html
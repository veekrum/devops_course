# HANDS_ON

## Install Ansible
    $ sudo apt-get update 
    $ sudo apt-get install software-properties-common 
    $ sudo apt-add-repository ppa:ansible/ansible $ sudo apt-get update 
    $ sudo apt-get install ansible    

## AD-HOC commands

    - add the vm block in /etc/ansible/hosts
    - ansible -m all ping 
    - ansible myvm -m ping
    - ansible myvm -a "ls"
    - ansible myvm -m copy -a "src=./testfile dest=/tmp/ mode = 777"
    - ansible myvm -m service -a 'name=nginx state=stopped ' --become

## simple playbook
    ---
    - name: running hello world
      hosts: myvm
      tasks:
        - name: running shell
          shell: echo hello world
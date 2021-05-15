Often you’ll want to do many things in one task, such as create a lot of users, install a lot of packages, or repeat a polling step until a certain result is reached.

## Standard Loop
```yaml
---
- name: adding keys
  hosts: all
  become: true
  tasks:
    - name: add several users
      user:
        name: "{{ item }}"
        state: absent
      with_items:
        - bibek
        - prashant
        - bikram
        - sahil
        - balman

    - name: add several users
      user:
        name: "{{ item.name }}"
        state: present
        groups: "{{ item.groups }}"
      with_items:
        - { name: 'balman', groups: 'vagrant' }
        - { name: 'sahil', groups: 'vagrant' }
        - { name: 'prashant', groups: 'vagrant' }
        - { name: 'bikram', groups: 'vagrant' }
        - { name: 'bibek', groups: 'vagrant' }
```

## Nested Loop
```yaml
---
- name: Nested Loop Test
  hosts: all
  tasks:
    - name: Nested Loop Test
      debug:
        msg: "Full name of the user {{ item[0] }} {{ item[1] }}"
      with_nested:
        - [ 'kalu', 'chameli', 'chmpa' ]
        - [ 'pandey', 'kali', 'gandarva' ]
```

## Dictonary Loop
```yaml
---
  - name: Looping over dictonary
    hosts: all
    vars:
      - users:
          alice:
            name: Alice Appleworth
            telephone: 123-456-7890
          bob:
            name: Bob Bananarama
            telephone: 987-654-3210
    tasks:
      - name: Looping over dictonary
        debug:
          msg: "User {{ item.key }} is {{ item.value.name }} ({{ item.value.telephone }})"
        with_dict: "{{ users }}"
```

## Sequences
```yaml
# documentation: https://docs.ansible.com/ansible/devel/collections/ansible/builtin/sequence_lookup.html
---
- name: Working with integers
  hosts: all
  tasks:
    - name: Print Sequential Numbers
      debug:
        msg: "Num: {{ item }}"
      with_sequence: start=0 end=10
      tags:
        - sequential
    - name: Jump by 3 and print numbers
      debug:
        msg: "Num: {{ item }}"
      with_sequence: start=0 end=10 stride=3
      tags:
        - jumpsteps
    - name: Print counts
      debug:
        msg: "Num: {{ item }}"
      with_sequence: count=10
      tags:
        - counts
```

## Random Selection
```yaml
---
  - name: Select Random
    hosts: all
    tasks:
      - name: Select random
        debug:
          msg: "Selection: {{ item }}"
        with_random_choice:
          - "one"
          - "two"
          - "three"
          - "four"
```

## Do Until
```yaml
---
  - name: Do until loop
    hosts: all
    tasks:
      - name: Do until loop
        shell: cat ~/until.txt
        register: result
        until: result.rc == 0
        retries: 5
        delay: 5
```

## Looping on inventories
```yaml
# documentation: https://docs.ansible.com/ansible/devel/collections/ansible/builtin/sequence_lookup.html
---
  - name: Working with inventories
    hosts: vagrant
    gather_facts: false
    tasks:
      # show all the hosts in the inventory
      - debug:
          msg: "{{ item }}"
        with_items:
          - "{{ groups['all'] }}"
        tags:
          - groups

      # show all the hosts in the current play
      - debug:
          msg: "{{ item }}"
        with_items:
          - "{{ ansible_play_batch }}"
        tags:
          - playbook_batch_only
      
      # show all the hosts in the inventory
      - debug:
          msg: "{{ item }}"
        with_inventory_hostnames:
          - all
        tags:
          - all_inventoriesg
```

## Looping files
```yaml
---
- name: Looping over file contents
  hosts: all
  tasks:
    - name: Looping over file contents
      debug:
        msg: "File Content: {{ item }}"
      with_file:
        - file1
        - file2
        - hosts
    - name: Looping with file globs
      debug:
        msg: "pwd of files: {{ item }}"
      with_fileglob:
        - '*'
```
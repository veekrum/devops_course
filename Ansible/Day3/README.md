## How to parse the information from gather facts
    - what is dictionary?
    - what is list?

## Run in check mode
    - ansible-playbook -i hosts playbook.yml --check-mode

## see lot more information [verbose]
    - ansible-playbook -i hosts playbook.yml -v/-vv/-vvv/-vvvv ## the more v the more verbose

## verifying the yaml file
    - install yaml-lint / ansible-lint
        - ansible-lint playbook.yml

## Conditions
    - we can use the conditions to execute when it meets

## Tags
    - we can only run the reqired tasks if we need

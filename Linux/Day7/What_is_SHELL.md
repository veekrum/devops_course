## what is shell?
   - Shell is an environment in which we can run our commands, programs, and shell scripts. A Shell provides you with an interface to the Unix system. It gathers input from you and executes programs based on that input.
## what is shell prompt? 
   - The prompt, $, which is called the command prompt, is issued by the shell. While the prompt is displayed, you can type a command.
	- eg : date, ls
## Shell Types:
   - In Unix, there are two major types of shells −
	- Bourne shell − If you are using a Bourne-type shell, the $ character is the default prompt.
    	- C shell − If you are using a C-type shell, the % character is the default prompt.

   - The Bourne Shell has the following subcategories −
    	- Bourne shell (sh)
        - Korn shell (ksh)
        - Bourne Again shell (bash)
        - POSIX shell (sh)

## Shell Scripts:
   - The basic concept of a shell script is a list of commands, which are listed in the order of execution.
	
## Examples
   ## test.sh
   cat <<EOF>> test.sh
   #!/bin/bash
   pwd
   ls
   date
   EOF
   - chmod +x test.sh
   - bash test.sh ## run



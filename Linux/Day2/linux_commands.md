### Help Commands
 - help page
 - man page
### Basic Commands
 - pwd
 - mkdir devops_class
 - mkdir devops{0..11}_class
 - touch devops_class/devops_file
 - touch devops_class/devops{0..9}_file
 - cd devops_class
 - nano devops_class
    - My first linux  class on devops
 - echo "writing from echo" >> devops_class
 - cp devops_class linux_class
 - mv linux_class linux_class01
 - ls / ls -la / ls --help
- rm devops_file
- rmdir devops_class

### cd Commands
- cd / cd . / cd .. / cd ... / cd -

### copy commands
- cp source destination
- cp -r source destination ##-- recursively

### move commands
- mv source destination

### delete commands
- rm filename
- rmdir directory_name
- rm -r file/dir ##-- recursively

---

### Standard Input

- The bash shell uses stdin to take input. In input redirection, a file is made input to the command and 
  this redirection is done with the help of '<' sign.
- command:
    - cat < filename  
    - cat <<EOF>> newfile , write the message and end with EOF

### Standard out
- The stdout is redirected with a '>' greater than sign. When shell meets the '>' sign, it will clear the 
   file (as you already know).
command:
    - $ cat > file
    - $ cat >> file ## appends file
    - $ echo "hello devops" > file
    - $ ls *class | cat > file_list

### Standard Error
- Command '2>' redirects the error of an output. It helps us you to keep our display less messy by redirecting
  error messages.
command:
    - $ echo hi 
    - $ echo hi 2> file
    - $ zecho hi
    - $ zecho hi 2> file
    - $ apt install vlc >> file 2>&1
    - $ sudo apt install vlc >> file 2>&1 

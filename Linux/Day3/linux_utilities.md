## Utilites Command

1. Head [read file from top of file]
    - `head sample.txt`
    - `head sample.txt sample2.txt`
    - `head -n 15 sample.txt` -> displays specified number of lines.
    - `head -c 20 sample.txt` -> counts the number of bytes of a file.
    - `head -c 2K sample.txt` -> return the result by multiplying the number by suffix

2. Tail [read file from bottom of file]
    - `tail sample.txt`
    - `tail sample.txt sample2.txt`
    - `tail -n 15 sample.txt` -> displays specified number of lines.
    - `tail -c 20 sample.txt` -> counts the number of bytes of a file.
    - `tail -c 2K sample.txt` -> return the result by multiplying the number by suffix
    
3. Tail/head with other commands
    - The tail command can be used with other commands. It can be piped to other commands to filter the output
        - `ls -t /etc | tail -n 6 ` -> same with head
        - `ps aux | sort -nk +3 | tail -2 ` 

4. Cat 
    - The 'cat' command can be used to display the content of a file.
        - `cat sample.txt`
        - `cat sample.txt > test.txt` - copying the files
        - `cat -b sample.txt` - shows the number
        - `cat -e sample.txt` - shows the end of file
5. Tac 
    - Shows the opposite of the cat command
        - `tac sample.txt`

6. more
    - As 'cat' command displays the file content. Same way 'more' command also displays the content of a file. Only difference is that, in case of larger files, 'cat' command output will scroll off your screen while 'more' command displays output one screenful at a time.
        - `more sample.txt`

7. less
    - The 'less' command is same as 'more' command but include some more features.
        - `less filename`
            - Search Navigation
                - search navigtion keys will help you in 
                    - forward search. 
                        - / : search for a pattern for the next occurence
                        - n : search for next match
                        - N : search for previous match
                    - backward search
                        - ? : search for a pattern for the next occurence
                        - n : for next match in backward direction
                        - N : for previous match in forward direction





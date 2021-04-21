## REF: https://www.tutorialspoint.com/unix/unix-basic-operators.htm
#!/bin/bash

val=`expr 2 + 2`
echo "Total value : $val"

a="10"
b="20"
## Arthimetic Operator
echo `expr $a + $b`

## boolean operator
if [ $a -le 11 -a $b -ge 19 ];then
    echo "$a is less than 11 and $b is more than 19"
else
    echo "$a is more than $b"
fi

##  Relation Operator
if [[ $a -lt $b ]];then
    echo "$a is less than $b"
else
    echo "$a is more than $b"
fi

## writable
if [[ -w "variables.sh" ]];then
    echo "file is writable"
else
    echo "file is not writable"
fi

## check if the file exists

if [[ -e "reading_input.sh" ]];then
    echo "reading_input.sh file exists"
    if [[ -x "reading_input.sh"]];then
        echo "file is executable, Now executing"
        bash reading_input.sh
    else
        echo "file not executable"
    fi
else
    echo "reading_input.sh doesnot exists"
fi

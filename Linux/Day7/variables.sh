#!/bin/bash
set -x
## What is Variable?
## - A variable is a character string to which we assign a value. The value assigned could be a number, 
##   text, filename, device, or any other type of data.

NAME="Marcus"
NUM="100"

echo $NAME
echo $NUM

#!/bin/sh

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Total Number of Parameters : $#"
lajdfhn
#echo "$?"
if [[ $? == "0" ]];then
        echo "previous command was successfully executed"
else
        echo "something wrong"
fi

## Array

#!/bin/sh

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"

for i in ${NAME[*]}:
  do
     echo $i
  done


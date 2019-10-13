#!/bin/bash
if [ $# -ne 1 ]
then
echo "Please enter only one argument"
exit 1
fi


ARG=$1
if [ -e $ARG ]
then


    if [ -f $ARG ]
    then
       

        while read line
        do
        ping -c5 $line &> /dev/null 
        
        if [ $? -ne 0 ] 
        then
        echo "$line - not reachable"
        
        else
        echo "$line - reachable"
        fi
        done < "$ARG"
        
      
        


    elif [ -d ARG ]
    then
    echo "Sorry it's a direcotry not a file"
    exit 1
    fi
else
echo "Sorry file does not exist"
fi



    



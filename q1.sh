#!/bin/bash

#file path is supplied as a command line argument

num_lines=`wc -l $1 | awk '{print $1}'`
if [ `expr $num_lines % 2` == 1 ]
then
    num_lines=`expr $num_lines + 1`
fi

num_lines=`expr $num_lines / 2`
awk '{if(NR=='$num_lines' ) print $0}' $1
#echo $num_lines


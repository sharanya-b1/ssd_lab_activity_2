#!/bin/bash

#Since the /etc/shells file contains "/" as separator between words, used the
# -F flag to change the default field separator

# {print $NF} will print the last column, as NF contains the number of fields

awk -F "/" '/^\/usr\// {print $NF}' /etc/shells

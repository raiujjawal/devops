#!/bin/bash

#stdout from bash sxcript to stderr
echo "Hello! Big Data @Bash" 1>&2
#stderr from bash script to /dev/null
#Note that there is no command called 'dates'

dates 2>&1 //This will dirsplay errors
dates 2>/dev/null //This will not display errors

#stderr and stdout to file
dates &> outfile.txt

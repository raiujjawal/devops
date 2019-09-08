#!/bin/bash

# This module checks if the pid of the specified
# process exists. If not, it returns a failure msg

source $1

uptime=`$command`
if [[ -n $uptime ]]; then
    printf '{
        "msg" : "%s Server is running since %s Hours & Minutes",
        "changed" : 1
    }' "$command" "$uptime"
else
    printf '{
        "msg" : "%s is not running",
        "failed" : "True"
    }' "$command"
fi

#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Fool you be passin' nuthin!"
    exit;
fi

printf "yo thanks for $# vars!\nI especially like them "

for var in "$@"
do
    printf "$var, "
done

printf ".\n"
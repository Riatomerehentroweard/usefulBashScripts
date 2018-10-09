#!/bin/bash

echo "${@: -1}"

if [ $# -eq 0 ]; then
    echo "Fool you be passin' nuthin!"
    exit;
fi

printf "yo thanks for $# vars!\nI especially like them "

for var in "$@"
do
    printf "$var, "
done

printf "
the first var: $1
the second var: $2"

printf ".\n"
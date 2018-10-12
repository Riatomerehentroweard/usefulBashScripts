#!/bin/bash

somfunction() {
    echo "hoi"
    echo "no"
    echo "bla"
    return 0
}

failFunc() {
    return 1;
}

if somfunction; then
    printf 'somfunction succeeded\n'
else
    printf 'somfunction failed\n'
fi

if failFunc; then
    printf 'failFunc succeeded\n'
else
    printf 'failFunc failed\n'
fi

printf "
alternatively you can use && or ||:
"

somfunction && echo "success" || echo "ultimate fail"

failFunc && echo "success" || echo "ultimate fail"

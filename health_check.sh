#!/bin/bash

echo "Hello from shell script"

if curl https://deploy-pokedex.fly.dev/health | grep -q "ok"; then
    printf "[ Success ]: ok was returned from the server"
else
    printf "[ Error ]: endpoint didn't work, check your deployment"
fi

exit 0 # exit status 1 means that the script "fails"
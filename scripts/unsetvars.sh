#!/bin/bash

# Loop through all environment variables
for var in $(env | grep '^EGV_' | cut -d= -f1); do
    unset -v $var
done

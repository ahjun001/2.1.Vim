#!/bin/bash

# looks ok in vim & codevim
if [ $1 -gt 100 ]; then
    echo Hey that\'s a large number.
    pwd
else
    echo 2 digits only hey!
fi
date

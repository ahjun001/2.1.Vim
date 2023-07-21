#!/usr/bin/env bash

# vim_del_all_lines_not_containing_the_string_foo.sh

# create text file
mkdir -p /tmp/test
testFile=/tmp/test/test.txt
cat <<-EOF >${testFile}
1. Beginning foo
this one goes
2. foo
this one too
3. End
thisisfoo 
EOF
vim ${testFile}
echo "Exiting ..."

#!/usr/bin/env bash

mkdir -p /tmp/test
testFile=/tmp/test/test.txt
cat <<-EOF >${testFile}
A. Change 1: Move to line a1, add deleting line before, and delete
to be deleted
a2 
to be deleted
a4 
to be deleted
a6 
to be deleted
a7 
to be deleted
a5 
to be deleted
a3 
to be deleted
a1 
B. After line b'n' add 2 lines saying "change 2: adding 2 lines"
b1 adding 1 line
b2 adding 2 line
b3 adding 3 line
b4 adding 4 line
b5 adding 5 line
EOF

vim ${testFile}
echo "Exiting ..."

#!/usr/bin/env bash

# vim_del_all_lines_containing_the_string_foo.sh

# create text file
mkdir -p /tmp/test
testFile=/tmp/test/test.txt
cat <<-EOF >${testFile}
foo
1 Beginning
   fooo  
2 Line 2
foo foo
3 no fo there
somefoohere
4 End
EOF
vim ${testFile}
echo 'Exiting ...'

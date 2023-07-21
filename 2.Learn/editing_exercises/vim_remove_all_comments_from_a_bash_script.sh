#!/usr/bin/env bash

mkdir -p /tmp/test
testFile=/tmp/test/test.txt
cat <<-EOF >${testFile}
#!/usr/bin/env bash

# some comment
# block comment
# block comment
# block comment

# isolated comment
pass
...
EOF

vim ${testFile}
echo "Exiting ..."

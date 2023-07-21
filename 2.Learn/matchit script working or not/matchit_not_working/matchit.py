#!/usr/bin/env python3

a = True
b = False

# This is a comment
"""
This is another comment
but this one is on several lines
"""

if a:
    print('a is True')
    if not b:
        print('b is False')
elif b:
    print('a is False')
    print('b is True')
else:
    print('a is False')

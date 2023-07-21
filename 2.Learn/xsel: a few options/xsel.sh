#!/usr/bin/env bash

echo -e "First close all clipboard managers, such as clipit \n"
read -r -N 1 -p "Copy some text in the clipboard (ctrl-c), then type 'y' to continue:" k
echo
if [[ "$k" == "y" ]]; then
        if xsel -ob; then
                echo "Sent"
        else
                echo "Not sent, exiting ..."
                exit
        fi
else
        echo "Exiting ..."
        exit
fi
echo

echo "Clearing the clipboard"
if xsel -cb; then
        echo "Cleared"
else
        echo "Not cleared, exiting ..."
        exit
fi
echo

echo "Sending clipboard to output"
if xsel -ob; then
        echo "Sent"
else
        echo "Not sent, exiting ..."
        exit
fi
echo


read -r -N 1 -p "Select some text, then type 'y' to continue:" k
echo
if [[ "$k" == "y" ]]; then
        if xsel -op; then
                echo "Sent"
        else
                echo "Not sent, exiting ..."
                exit
        fi
else
        echo "Exiting ..."
        exit
fi
echo

echo "Clearing the selection"
if xsel -cp; then
        echo "Cleared"
else
        echo "Not cleared, exiting ..."
        exit
fi
echo

echo "Sending clipboard to output"
if xsel -op; then
        echo "Sent"
else
        echo "Not sent, exiting ..."
        exit
fi

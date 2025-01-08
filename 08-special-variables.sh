#!/bin/bash

echo "all veriables passed: $@"
echo "number of veriables: $#"
echo "script name: $0"
echo "pwd: $pwd"
echo "home directory of current user: $HOME"
echo "which user is running this script: $USER"
echo "process id of current script: $$"
sleep 60 &
echo "process id of last command in background: $!"
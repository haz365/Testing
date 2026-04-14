#!/bin/bash

mkdir bash_demo
echo "Directory 'bash_demo' created."

cd bash_demo

touch demo.txt
echo "File 'demo.txt' created."

echo "This file was created by a bash script on $(date)" > demo.txt

echo ""
echo "File contents:"
cat demo.txt

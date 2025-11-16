#!/bin/bash

echo "------ DISK USAGE ------"
df -h | head -n 10

echo
echo "------ TOP 10 LARGEST DIRECTORIES ------"
du  -h |head -n 25


#! /bin/bash

echo " DISPLAY LIST OF FILE INSIDE" 

ls -l  | head -n  2


echo "\n *****************************************"
echo "\n  ---------DISPLAY DISK INFO-----"

df -h | head -n 10

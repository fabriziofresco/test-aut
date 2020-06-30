#!/bin/bash -x

for i in {1..30} 
 do 
   curl $IP | grep GLPC
   if [ $? -eq 0 ]; then exit 0; fi
   sleep 10
 done
exit 1

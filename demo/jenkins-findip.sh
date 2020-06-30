#!/bin/bash -lx

rm -f instance_ip.txt
# Wait until IP get assigne to intance and save it temporarily
for i in {1..30} 
 do
   IP=`curl -k "$URL/api/instances" \
        -H "Authorization: BEARER $TOKEN" |\
        jq '.instances[] | select(.name=="jenkins-testing_vm - wp") | .connectionInfo[].ip' |\
        sed  's/\"//g'` 
   if [ ! -z $IP ]; then if [ $IP != '0.0.0.0' ]; then 
     echo $IP > instance_ip.txt
     exit 0; 
   fi; fi
   sleep 10
 done
exit 1

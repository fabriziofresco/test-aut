#!/usr/local/rvm/bin/rvm-shell -lex

#cd $GIT_CHECKOUT_DIR
#pwd
#source /etc/bash.bashrc
#/etc/profile.d/rvm.sh
#
#echo "this is my file" > myfile.txt
#echo $PATH
cd /usr/local/rvm/gems/ruby-2.7.0/bin
#./morpheus remote add dev $1 --insecure --debug
#./morpheus login -T $2 --insecure --debug 
./morpheus apps add jenkins-testing_vm --debug -b 7 -O App.0.layout=1178 -O App.0.servicePlan=403 -O App.0.rootVolume.datastoreId=2 -O App.0.networkInterface.networkId=network-1676 -N


!/usr/local/rvm/bin/rvm-shell

#cd $GIT_CHECKOUT_DIR
#pwd
#source /etc/bash.bashrc
#/etc/profile.d/rvm.sh
#
#echo "this is my file" > myfile.txt
#echo $PATH
cd /usr/local/rvm/gems/ruby-2.7.0/bin
./morpheus remote add dev https://jeogmmibbr35d2gqthpbk5pa51.privatecloud.greenlake.hpe.com --insecure --debug
./morpheus login -T 2519f2bf-6298-490a-8538-ade0db43e2b2 --insecure --debug 
./morpheus apps add jenkins-testing_vm --debug -b 2 -O App.0.servicePlan=403 -O App.0.rootVolume.datastoreId=2 -O App.0.networkInterface.networkId=network-1676 -N

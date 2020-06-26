#!/usr/local/rvm/bin/rvm-shell -lex

#cd $GIT_CHECKOUT_DIR
#pwd
#source /etc/bash.bashrc
#/etc/profile.d/rvm.sh
#
#echo "this is my file" > myfile.txt
#echo $PATH
cd /usr/local/rvm/gems/ruby-2.7.0/bin

./morpheus apps remove jenkins-testing_vm --remove-instances on

./morpheus apps add jenkins-testing_vm --debug -b 7 \
    -O App.0.layout=1178 \
    -O App.0.servicePlan=403 \
    -O App.0.rootVolume.datastoreId=2 \
    -O App.0.networkInterface.networkId=network-1676 \
    -O App.0.config.customOptions.databaseName=fabdb \
    -O App.0.config.customOptions.databaseUserName=fabuser \
    -O App.0.config.customOptions.databasePassword=Fabpw123 -N

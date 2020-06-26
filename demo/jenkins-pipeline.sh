#!/usr/local/rvm/bin/rvm-shell -lex

cd /usr/local/rvm/gems/ruby-2.7.0/bin

./morpheus apps add jenkins-testing_vm --debug -b 7 \
    -O App.0.layout=1178 \
    -O App.0.servicePlan=403 \
    -O App.0.rootVolume.datastoreId=2 \
    -O App.0.networkInterface.networkId=network-1676 \
    -O App.0.config.customOptions.databaseName=fabdb \
    -O App.0.config.customOptions.databaseUserName=fabuser \
    -O App.0.config.customOptions.databasePassword=Fabpw123 -N

#!/usr/local/rvm/bin/rvm-shell

/usr/local/rvm/gems/ruby-2.7.0/bin/morpheus apps add fab-app-cli-02 --debug -b 2 -O App.0.servicePlan=403 -O App.0.rootVolume.datastoreId=2 -O App.0.networkInterface.networkId=network-1676 -N


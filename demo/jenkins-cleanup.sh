#!/usr/local/rvm/bin/rvm-shell -l

cd /usr/local/rvm/gems/ruby-2.7.0/bin
./morpheus apps remove jenkins-testing_vm --remove-instances on -y -f || true

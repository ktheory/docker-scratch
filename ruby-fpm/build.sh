#!/bin/bash -ex

apt-get update -y
apt-get upgrade -y
apt-get install -y build-essential git ruby-dev
gem install fpm --no-ri --no-rdoc

RUBY_VERSION=$1
DEST=/tmp/dest
cd /tmp
git clone https://github.com/sstephenson/ruby-build.git
cd ruby-build


mkdir -p $DEST
bin/ruby-build $RUBY_VERSION $DEST

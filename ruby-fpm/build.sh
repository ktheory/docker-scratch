#!/bin/bash -ex

RUBY_VERSION=$1
DEST=/tmp/dest
cd /tmp
git clone https://github.com/sstephenson/ruby-build.git
cd ruby-build


mkdir -p $DEST
bin/ruby-build $RUBY_VERSION $DEST

# Build the package
#fpm -s dir -t deb -n ksr-ruby -v 2.1.2  -C /tmp/dest --prefix /usr/local .

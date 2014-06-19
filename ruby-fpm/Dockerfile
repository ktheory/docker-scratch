FROM ubuntu:14.04
MAINTAINER aaron@kickstarter.com

RUN apt-get update -y
RUN apt-get upgrade -y

# Set up fpm
RUN apt-get install -y build-essential git ruby-dev
RUN gem install fpm --no-ri --no-rdoc

# Set up ruby-build
RUN apt-get install -y curl libssl-dev

ADD build.sh /tmp/build.sh
RUN /tmp/build.sh 2.1.2

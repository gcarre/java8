FROM ubuntu:14.04
MAINTAINER Guillaume Carre <guillaume.carre@gmail.com>

RUN apt-get update
RUN apt-get install -y software-properties-common

# Install Java
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN apt-get install -q -y oracle-java8-installer
RUN apt-get install -q -y oracle-java8-set-default

CMD ["java"]
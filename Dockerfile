FROM ubuntu:16.04
LABEL MAINTAINER Fethi Susam <fsusam@gmail.com>

ENV JAVA_HOME	/usr/lib/jvm/java-8-oracle

RUN apt-get update && \
    apt-get upgrade -y && \
	apt-get --purge remove openjdk* && \
    apt-get install -y software-properties-common && \
	apt-get install -y nano && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get clean
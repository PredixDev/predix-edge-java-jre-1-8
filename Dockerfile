FROM alpine:latest


LABEL maintainer="Predix Edge Apps"
LABEL hub="https://hub.docker.com"
LABEL org="https://hub.docker.com/u/predixadoption"
LABEL repo="predix-edge-java-jre-1-8"
LABEL version="1.0.5"
LABEL support="https://forum.predix.io"
LABEL license="https://github.com/PredixDev/predix-docker-samples/blob/master/LICENSE.md"

RUN pwd
RUN whoami
RUN printenv

#install curl
RUN cat /etc/resolv.conf

#if working at honme through the proxy and hitting DNS issues, try uncommenting this, instead, to use the Google DNS servers.
#RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf && cat /etc/resolv.conf
#RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf && apk add -U curl  && \
#    rm -f /var/cache/apk/*

RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf && apk add -U curl  && \
    rm -f /var/cache/apk/*

#just ensuring that internet connectivity is working through the proxy, if there is one
RUN curl http://google.com
RUN curl --insecure https://google.com

#install Java
RUN apk --update add openjdk8-jre && \
    rm -f /var/cache/apk/*
RUN /usr/bin/java -version

#if you want something to test out uncomment this. Requires that you compile it from your laptop before running docker build
#COPY ./target/classes/Test.class .
#ENTRYPOINT ["java Test"]

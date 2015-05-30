FROM ubuntu:latest

MAINTAINER Ansgar Schmidt <ansgar.schmidt@gmx.net>

VOLUME ["/jira/data/attachments"]
VOLUME ["/jira/export"]

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget -y

WORKDIR /tmp
COPY response.varfile /tmp/

RUN wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-6.4.4-x64.bin
RUN chmod 700 atlassian-jira-6.4.4-x64.bin
#RUN mkdir /jira
RUN /tmp/atlassian-jira-6.4.4-x64.bin -q -varfile response.varfile
RUN rm /tmp/atlassian-jira-6.4.4-x64.bin
RUN rm /tmp/response.varfile

EXPOSE 8080

CMD /opt/atlassian/jira/bin/start-jira.sh -fg


#Jira

Docker build file for Attlasian's Jira. This docker file is based on ubuntu 14.4 and Jira version 6.4.4.

##Get it

sudo docker pull ansi/jira

##Run it

sudo docker run -p 1883:1883 --name jira -d ansi/jira

#Jira

Docker build file for Attlasian's Jira. This docker file is based on ubuntu 14.4 and Jira version 6.4.4.

##Get it

sudo docker pull ansi/jira

##Run it
```
sudo docker run -p 5432:5432 --name postgres -e POSTGRES_PASSWORD=pswd4jira -e POSTGRES_USER=jira -d postgres
sudo docker run -p 8080:8080 --name jira                                                          -d ansi/jira
```

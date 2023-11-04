FROM openjdk
MAINTAINER Azeem<AbdulAzeem.au@gmail.com>
COPY /target/app-1.jar  /usr/app/app.jar
WORKDIR /usr/app
ENTRYPOINT java -jar app.jar
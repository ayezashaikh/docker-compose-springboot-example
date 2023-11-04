FROM openjdk
MAINTAINER Azeem<AbdulAzeem.au@gmail.com>
COPY /build/libs/docker-compose-springboot-example-0.0.1-SNAPSHOT.jar   /usr/app/app.jar
WORKDIR /usr/app
ENTRYPOINT java -jar app.jar
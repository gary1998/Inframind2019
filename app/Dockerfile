FROM ubuntu:latest
RUN apt-get update && apt-get install -y maven
WORKDIR /code
ADD pom.xml /code/pom.xml
ADD src /code/src
CMD ["mvn", "tomcat7:run"]
EXPOSE 8080
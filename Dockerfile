FROM tomcat:latest
MAINTAINER Priti <priti@ubuntu.coms>
EXPOSE 8080
COPY target/java_pipeline.war /usr/local/tomcat/webapps/java_pipeline.war

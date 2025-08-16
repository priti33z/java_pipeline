# Dockerfile
FROM tomcat:latest
LABEL maintainer="Priti <priti@ubuntu.com>"
EXPOSE 8081

# Copy the correct WAR file
COPY target/java_pipeline.war /usr/local/tomcat/webapps/ROOT.war

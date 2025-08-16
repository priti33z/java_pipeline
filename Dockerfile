# Use official Tomcat base image
FROM tomcat:latest

# Replace deprecated MAINTAINER with LABEL
LABEL maintainer="Priti <priti@ubuntu.com>"

# Expose Tomcat port
EXPOSE 8080

# Copy WAR file to ROOT so app is served at "/"
COPY target/java_pipeline.war /usr/local/tomcat/webapps/ROOT.war

# Dockerfile
FROM tomcat:9.0-jdk17-temurin
LABEL maintainer="Priti <priti@ubuntu.com>"
EXPOSE 8080

# Copy the correct WAR file
COPY /var/lib/jenkins/workspace/priti_ci_job/target/java_pipeline.war


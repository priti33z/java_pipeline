# Use official Tomcat base image
FROM tomcat:9.0-jdk17-temurin

# Maintainer information (optional)
LABEL maintainer="Priti Zaware <priti@example.com>"

# Remove default ROOT app to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy our WAR file into Tomcat webapps folder
COPY target/java_pipeline.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]  

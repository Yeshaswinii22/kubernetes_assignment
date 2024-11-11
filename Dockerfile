# Use an official Tomcat image from Docker Hub
FROM tomcat:9.0-jdk11-openjdk

# Remove the default webapps in the Tomcat container
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the webapps directory of Tomcat
COPY target/docker-java-sample-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port the Tomcat server will listen on
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

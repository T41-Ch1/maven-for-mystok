FROM tomcat:8.5
COPY ./target/my-webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080

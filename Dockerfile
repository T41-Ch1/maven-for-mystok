FROM tomcat:latest
COPY ./my-webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080

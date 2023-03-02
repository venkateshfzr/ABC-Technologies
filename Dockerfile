FROM tomcat:8.0
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY ./ABCtechnologies-1.0.war /usr/local/tomcat/webapps/abc.war

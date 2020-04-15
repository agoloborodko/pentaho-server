FROM doccom/pentaho-bi-server-ce

WORKDIR /home/pentaho

# Set Java variables
ENV JAVA_HOME="/home/java/jre1.8.0_211"
ENV PATH="${PATH}:$JAVA_HOME/bin"

# Download Vertica JDBC drivers
RUN curl -o /home/pentaho/pentaho-server/tomcat/lib/vertica-jdbc-9.3.1-0.jar https://www.vertica.com/client_drivers/9.3.x/9.3.1-0/vertica-jdbc-9.3.1-0.jar

EXPOSE 8080

#Run start-pentaho.sh to start Pentaho Server
CMD ["/home/pentaho/pentaho-server/start-pentaho.sh"]
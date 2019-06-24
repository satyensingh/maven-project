FROM tomcat:8.0

ADD ./webapp/target/*.war /var/lib/tomcat8/webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]

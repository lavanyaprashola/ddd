FROM amazonlinux

WORKDIR /opt

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.zip /opt

RUN yum install unzip -y

RUN unzip /opt/apache-tomcat-9.0.62.zip

RUN chmod +x /opt/apache-tomcat-9.0.62/bin/*

RUN amazon-linux-extras install java-openjdk11 -y

COPY ./dptweb-1.0.war /opt/apache-tomcat-9.0.62/webapps/

CMD ["/opt/apache-tomcat-9.0.60/bin/catalina.sh", "run"]

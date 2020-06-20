
FROM openjdk:8-jdk-alpine
EXPOSE 25565/tcp

WORKDIR /mcserver
ENTRYPOINT exec java -Xms2G -Xmx5G -XX:PermSize=256m -Dfml.read.Timeout=560 -jar forge-1.12.2-14.23.5.2847-universal.jar nogui
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar mcserv.jar
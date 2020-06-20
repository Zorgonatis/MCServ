
FROM openjdk:8-jdk-alpine
EXPOSE 25565/tcp

WORKDIR /mcserver
ENTRYPOINT exec java $JAVA_OPTS -jar $JAR_FILE nogui
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar mcserv.jar
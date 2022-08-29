FROM openjdk:11-jre-slim
VOLUME /tmp
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
COPY . .
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar"]
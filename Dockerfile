FROM openjdk:11-jre-slim

VOLUME /tmp

ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} /jarfile/app.jar

COPY . .

ENTRYPOINT ["java","-jar","/app.jar"]
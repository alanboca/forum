FROM openjdk:8-jdk-alpine
RUN mkdir app
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
WORKDIR /app
ENTRYPOINT ["java", "-jar", "/app.jar"]
FROM maven:3.8.4-jdk-21 AS build
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:21-jre-alpine
COPY --from=build /target/videoCall-0.0.1-SNAPSHOT.jar videoCall.jar
EXPOSE 8080
ENTRYPOINT ["java","jar","videoCall.jar"]
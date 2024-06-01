FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:17-jdk-oracle
COPY --from=build /target/videoCall-0.0.1-SNAPSHOT.jar videoCall.jar
EXPOSE 8080
ENTRYPOINT ["java","jar","videoCall.jar"]

FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:17-jdk-oracle
COPY --from=build /target/videocall-0.0.1-SNAPSHOT.jar videocall.jar
EXPOSE 8080
ENTRYPOINT ["java","jar","videocall.jar"]

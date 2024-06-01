FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:17-jdk-oracle
COPY --from=build /target/VideoCallApplication-0.0.1-SNAPSHOT.jar VideoCallApplication.jar
EXPOSE 8080
ENTRYPOINT ["java","jar","VideoCallApplication.jar"]

FROM maven:3.8.3-amazoncorretto-17 AS builder
WORKDIR /tmp
COPY ./src ./src
COPY ./pom.xml .
RUN mvn package

FROM amazoncorretto:17-alpine-jdk
COPY --from=builder /tmp/target/api-0.0.1-SNAPSHOT.jar /api/api.jar
EXPOSE 8080


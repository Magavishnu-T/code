FROM maven:3.9.9-eclipse-temurin-17 AS build-stage1
WORKDIR /temp_project
COPY . /temp_project
EXPOSE 8080
RUN mvn clean package

FROM eclipse-temurin:17-jre
WORKDIR /code
COPY --from=build-stage1 /temp_project/target/code-0.0.1-SNAPSHOT.jar ./
CMD ["java", "-jar", "./code-0.0.1-SNAPSHOT.jar"]
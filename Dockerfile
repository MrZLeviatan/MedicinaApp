# Stage 1: Build the project
FROM gradle:8.3-jdk17 AS build
WORKDIR /app
COPY . .
RUN gradle clean build --no-daemon

# Stage 2: Run the app
FROM eclipse-temurin:22-jdk-jammy
WORKDIR /app
COPY --from=build /app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

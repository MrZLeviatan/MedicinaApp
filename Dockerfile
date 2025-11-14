# ==============================================
# Dockerfile for MedicinaApp Spring Boot Backend
# ==============================================

# 1. Usa una imagen base de OpenJDK 22
FROM eclipse-temurin:22-jdk-jammy

# 2. Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copia el archivo build/libs/*.jar al contenedor
COPY build/libs/*.jar app.jar

# 4. Expone el puerto donde correrá Spring Boot
EXPOSE 8080

# 5. Comando para ejecutar la app
ENTRYPOINT ["java", "-jar", "app.jar"]

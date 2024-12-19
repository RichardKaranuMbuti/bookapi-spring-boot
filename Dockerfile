# Use OpenJDK 17 as the base image
FROM eclipse-temurin:17-jdk-alpine

# Create a new user
RUN adduser -D -s /bin/bash appuser

# Set non-root user
USER appuser

# Set working directory
WORKDIR /app

# Copy the JAR file
COPY target/*.jar app.jar

# Expose port 8080
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

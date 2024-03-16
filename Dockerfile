# Use a base image with OpenJDK installed
FROM openjdk:8-jdk-alpine

# Copy the compiled JAR file into the container at /app
ADD target/*.jar /app.jar

# Command to run the Spring Boot application when the container starts
CMD ["java", "-jar", "/app.jar"]
# Expose the port that your Spring Boot application runs on
EXPOSE 8080

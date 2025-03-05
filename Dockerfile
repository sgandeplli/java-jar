FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/*.jar /app/sam.jar

# Expose the application port
EXPOSE 8081

# Run the Java application
CMD ["java", "-jar", "/app/sam.jar"]

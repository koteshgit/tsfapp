# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY target/yourapp.jar /app/tsfapp.jar

# Expose port 9090
EXPOSE 9090

# Run the jar file
ENTRYPOINT ["java", "-jar", "tsfapp.jar"]

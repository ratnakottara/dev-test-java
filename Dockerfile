# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile your Java code
RUN javac HelloWorld.java

# Create a JAR file
RUN jar cfe HelloWorld.jar HelloWorld HelloWorld.class

# Define the command to run your Java application
CMD ["java", "-jar", "HelloWorld.jar"]

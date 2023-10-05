# Use an official OpenJDK Windows image as a parent image
FROM adoptopenjdk/openjdk11:windows

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY HelloWorld.jar /app

# Define the command to run your Java application
CMD ["java", "-jar", "HelloWorld.jar"]

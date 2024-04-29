# Use an OpenJDK base image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY build/libs/fullstack-jvm-1.0-SNAPSHOT.jar /app/

# Set the command to run the application
CMD ["java", "-jar", "fullstack-jvm-1.0-SNAPSHOT.jar"]

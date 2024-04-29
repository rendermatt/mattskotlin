# Use an OpenJDK base image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the Gradle wrapper files
COPY gradlew ./
COPY gradle ./gradle

# Copy the build configuration files
COPY build.gradle.kts settings.gradle.kts ./

# Copy the source code
COPY src ./src

# Download and install Gradle
RUN ./gradlew --version

# Build the application
RUN ./gradlew build

# Copy the application JAR file into the container
COPY build/libs/fullstack-jvm-1.0-SNAPSHOT.jar /app/

# Set the command to run the application
CMD ["java", "-jar", "fullstack-jvm-1.0-SNAPSHOT.jar"]

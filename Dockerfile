FROM amazoncorretto:17-alpine

# Create a directory on the server
RUN mkdir /app

# Set the working directory
WORKDIR /app

# Copy the JAR file into the directory
COPY target/demo-0.0.1-SNAPSHOT.jar /app/app.jar

# Set the entry point
ENTRYPOINT ["java", "-jar", "app.jar"]

# docker buildx build --platform linux/amd64 -t hello-world .
# docker run -p 8080:8080 hello-world
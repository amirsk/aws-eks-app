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
# docker images
# docker run -p 8080:8080 hello-world

# region={ PLACEHOLDER }
# aws_account_id={ PLACEHOLDER }
# aws ecr get-login-password --region ${region} | docker login --username AWS --password-stdin ${aws_account_id}.dkr.ecr.${region}.amazonaws.com
# aws ecr create-repository --repository-name hello-repository --region ${region}
# docker tag hello-world:latest ${aws_account_id}.dkr.ecr.${region}.amazonaws.com/hello-repository
# docker push ${aws_account_id}.dkr.ecr.${region}.amazonaws.com/hello-repository

# aws ecr batch-delete-image --repository-name hello-repository --image-ids imageTag=latest --region ${region}
# aws ecr delete-repository --repository-name hello-repository --force --region ${region}
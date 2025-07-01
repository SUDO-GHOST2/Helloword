# Use official OpenJDK base image
FROM openjdk:17-alpine

# Set working directory in the container
WORKDIR /app

# Copy current directory contents into container
COPY . .

# Compile the Java file
RUN javac HelloWorld.java

# Run the program
CMD ["java", "HelloWorld"]

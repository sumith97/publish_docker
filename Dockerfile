# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Install curl for making HTTP requests
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Define the command to run when the container starts
CMD ["curl", "-I", "http://google.com"]

# Use the official Ubuntu 20.04 base image
FROM ubuntu:20.04

# Update the package lists and upgrade the installed packages
RUN apt-get update && apt-get upgrade -y

# Set the working directory
WORKDIR /app



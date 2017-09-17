# Pull base image.
FROM ubuntu

# Install Java.
RUN \
  apt-get update && \
  apt-get install openjdk-8-jre -y && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# Define default command.
CMD ["bash"]

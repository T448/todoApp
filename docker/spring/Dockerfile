FROM openjdk:17-jdk-slim

# VOLUME /tmp
# RUN mkdir /app
# WORKDIR /app
ARG USERNAME=java
ARG USER_DIR=/home/$USERNAME
ARG WORK_DIR=$USER_DIR/srv
RUN addgroup   --system --gid 1001 java
RUN adduser  --system --uid  1001   --group java
RUN  chown -R java:java /opt
RUN mkdir /logs && chown -R java:java /logs
RUN apt update 
RUN apt upgrade -y
RUN apt install git -y
USER $USERNAME

COPY . /home/java/srv
WORKDIR /home/java/srv
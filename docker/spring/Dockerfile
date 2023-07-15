FROM openjdk:17-jdk-slim

ARG USERNAME=java
ARG USER_DIR=/home/$USERNAME
ARG WORK_DIR=$USER_DIR/srv
RUN adduser java
RUN chown -R java:java ${USER_DIR}
RUN mkdir ${WORK_DIR} && chown -R java:java ${WORK_DIR}
RUN apt update 
RUN apt upgrade -y
RUN apt install git -y
USER $USERNAME
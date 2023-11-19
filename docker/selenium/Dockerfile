FROM selenium/standalone-chrome:4.15.0-20231108

ARG USERNAME=seluser
ARG USER_DIR=/home/$USERNAME
ARG WORK_DIR=$USER_DIR/selenium
# USER root
WORKDIR ${WORK_DIR}
# RUN adduser seluser
# RUN chown -R seluser:seluser ${USER_DIR}
# RUN chmod -R 755 ${USER_DIR}
# RUN mkdir ${WORK_DIR} 
# RUN chown -R selenium:selenium ${WORK_DIR}


# USER root
# RUN adduser selenium
# USER selenium
# # RUN mkdir /home/selenium
# WORKDIR /home/selenium
# # WORKDIR /usr/src/app

USER root

RUN chown -R seluser:seluser ${USER_DIR}
RUN chmod -R 755 ${USER_DIR}
RUN chown -R seluser:seluser ${WORK_DIR}
RUN chmod -R 755 ${WORK_DIR}

RUN ls -la
RUN pwd
RUN whoami
RUN curl -SL https://deb.nodesource.com/setup_20.x | bash
RUN apt-get install -y nodejs vim
RUN npm install -g npm
# RUN chown -R seluser:seluser ${USER_DIR}
# RUN chmod -R 755 ${USER_DIR}
# RUN chown -R seluser:seluser ${WORK_DIR}
# RUN chmod -R 755 ${WORK_DIR}
USER $USERNAME
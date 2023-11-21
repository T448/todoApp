FROM selenium/standalone-chrome:4.15.0-20231108

ARG USERNAME=seluser
ARG USER_DIR=/home/$USERNAME
ARG WORK_DIR=$USER_DIR/selenium

USER root

COPY entrypoint.sh ${USER_DIR}/
RUN chown -R ${USERNAME}:${USERNAME} ${USER_DIR} && chmod -R 755 ${USER_DIR}
RUN mkdir ${WORK_DIR} && chown -R ${USERNAME}:${USERNAME} ${WORK_DIR} && chmod -R 755 ${WORK_DIR}

RUN curl -SL https://deb.nodesource.com/setup_20.x | bash
RUN apt-get install -y nodejs vim
RUN npm install -g npm

ENTRYPOINT ["/home/seluser/entrypoint.sh"]
CMD ["/bin/bash"]

FROM ubuntu
RUN apt-get install -y openssh-server
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "bash", "/entrypoint.sh" ]

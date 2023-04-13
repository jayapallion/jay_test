FROM ubuntu
RUN apt-get update && apt-get install openssh-server
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "bash", "/entrypoint.sh" ]

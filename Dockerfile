FROM python:latest

USER root
RUN apt-get update && \
    apt-get install -y git-core python3-dev

ENV PYTHONUSERBASE=/usr/local/python-packages
ENV PATH="$PATH:/usr/local/python-packages/bin"

RUN mkdir -p $PYTHONUSERBASE && chown -R $USER:$USER $PYTHONUSERBASE
RUN pip3 install --upgrade --user pip awscli

ENV KUBE_VERSION=1.24.2
RUN curl -LO "https://dl.k8s.io/release/v${KUBE_VERSION}/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/

FROM ubuntu:20.04

RUN apt-get update && apt-get -y install \
    wget

RUN wget https://github.com/shazow/ssh-chat/releases/download/v1.10/ssh-chat-linux_amd64.tgz \
    && tar -xf ssh-chat-linux_amd64.tgz -C /opt \
    && ln -sf /opt/ssh-chat/ssh-chat /usr/local/bin/ssh-chat \
    && mkdir -p /root/.ssh

COPY ./confs/ssh-chat-key /root/.ssh/id_rsa

EXPOSE 2022

CMD ["/usr/local/bin/ssh-chat"]

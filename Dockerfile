FROM ubuntu

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible

RUN apt-get install -y ssh
RUN mkdir /root/.ssh && chmod 700 /root/.ssh
RUN echo "Host *\nStrictHostKeyChecking no" >> /root/.ssh/config

# ansible vault requires vi
RUN apt-get install -y vim

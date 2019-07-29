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

#digital ocean requires dopy that is available through pip
RUN apt-get install -y python-pip
RUN pip install dopy

RUN wget https://networkgenomics.com/try/mitogen-0.2.7.tar.gz -O /root/mitogen.tar.gz
RUN tar -xf mitogen.tar.gz -C /root/ && rm /root/mitogen.tar.gz && mv /root/mitogen-* /root/mitogen/

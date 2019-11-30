FROM jenkins/ssh-slave

RUN  curl -sSL https://get.docker.com/ | sh

RUN apt-get update &&\
    apt-get install -y openjdk-8-jdk python-pip &&\
    apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir docker-compose

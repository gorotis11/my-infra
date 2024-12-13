FROM jenkins/jenkins:lts

USER root

RUN apt-get update \
 && apt-get -y install lsb-release \
 && curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
 && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null \
 && apt-get update \
 && apt-get -y install docker-ce docker-ce-cli docker-compose-plugin containerd.io

RUN usermod -u 1000 jenkins && \
    groupmod -g 984 docker && \
    usermod -aG docker jenkins

USER jenkins
FROM andrewrothstein/docker-ansible:ubuntu_xenial
MAINTAINER Andrew Rothstein andrew.rothstein@gmail.com

ENV DOCKER_DEV_ENV=/docker-dev-env
RUN mkdir -p $DOCKER_DEV_ENV
WORKDIR $DOCKER_DEV_ENV
ADD requirements.yml requirements.yml
RUN ansible-galaxy install -r requirements.yml
ADD install.yml install.yml
RUN ansible-playbook install.yml
ADD boot.yml boot.yml
CMD ansible-playbook boot.yml && /usr/bin/supervisord

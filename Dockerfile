FROM andrewrothstein/docker-ansible:ubuntu_xenial
MAINTAINER Andrew Rothstein andrew.rothstein@gmail.com

ENV DOCKER_DEV_ENV=/docker-dev-env
RUN mkdir -p $DOCKER_DEV_ENV
WORKDIR $DOCKER_DEV_ENV

COPY requirements.yml requirements.yml
RUN ansible-galaxy install -r requirements.yml

COPY playbook.yml playbook.yml
RUN ansible-playbook playbook.yml

COPY boot.sh boot.sh
ENTRYPOINT ["/usr/local/bin/dumb-init", "-c", "--"]
CMD ["./boot.sh"]
VOLUME ["/root/.ssh"]
EXPOSE 22
FROM andrewrothstein/docker-supervisord
MAINTAINER Andrew Rothstein andrew.rothstein@gmail.com

COPY requirements.yml requirements.yml
RUN ansible-galaxy install -r requirements.yml

COPY playbook.yml playbook.yml
RUN ansible-playbook playbook.yml

EXPOSE 22

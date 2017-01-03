FROM andrewrothstein/docker-supervisord

COPY requirements.yml requirements.yml
RUN ansible-galaxy install -r requirements.yml

COPY playbook.yml playbook.yml
RUN ansible-playbook playbook.yml

EXPOSE 22

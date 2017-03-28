FROM docker.io/andrewrothstein/docker-ansible:alpine_3.5
MAINTAINER "Andrew Rothstein" andrew.rothstein@gmail.com

# embed roles
ONBUILD RUN export PLAYBOOK_DIR=/playbook-$(uuid)
ONBUILD RUN mkdir -p $PLAYBOOK_DIR
ONBUILD COPY . $PLAYBOOK_DIR
ONBUILD WORKDIR $PLAYBOOK_DIR
# install requirementes...
ONBUILD RUN if [ -e requirements.yml ]; ansible-galaxy install -r requirements.yml; fi
# run playbook to configure to suit
ONBUILD RUN if [ -e playbook.yml ]; ansible-playbook playbook.yml; fi
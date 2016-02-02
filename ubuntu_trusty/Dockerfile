
FROM andrewrothstein/docker-ansible:ubuntu_trusty
MAINTAINER "Andrew Rothstein" andrew.rothstein@gmail.com

# embed roles
ONBUILD ADD requirements.yml requirements.yml
ONBUILD RUN ansible-galaxy install -r requirements.yml

# execute playbook to configure container to suit
ONBUILD ADD playbook.yml playbook.yml
ONBUILD RUN ansible-playbook playbook.yml
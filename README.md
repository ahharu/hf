# Welcome!

## Ansible

Run using this command

`ansible-playbook -i inventory/hosts configure_hosts.yml --private-key=/home/whatever/key.pem`

## Docker

Build the docker image

`docker build -t flask-sample:latest .`

`docker run -d -p 5000:5000 flask-sample`

then go to 

http://localhost:5000

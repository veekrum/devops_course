## Docker-compose

    - Compose is a tool for defining and running multi-container Docker applications.with a single command, you create and start all the services from your configuration

### Features
    - Multiple isolated environments on a single host
    - Preserve volume data when containers are created
    - Only recreate containers that have changed

## Installation
    - sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    - sudo chmod +x /usr/local/bin/docker-compose
    - sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
    - Check -> docker-compose --version

## Commands
    - docker-compose build 
    - docker-compose up / up -d
    - docker-compose run web env - ## allows you to run one-off commands
    - docker-compose ps
    - docker-compose stop/start
    - docker-compose exec web sh ## for login
    - docker-compose images
    - 

## Sample docker-compose
    - https://docs.docker.com/samples/django/
    - https://docs.docker.com/samples/rails/
    - https://github.com/docker/awesome-compose
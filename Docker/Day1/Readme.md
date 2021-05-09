# Installation
## Ubuntu
Link: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

```shell
### Install required dependencies
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Download the GPG keys
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Update the apt repo
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Finally install docker engine docker cli and containerd
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Verify
## CLI
docker --version
## Docker Service/Engine
sudo systemctl status docker.service

## Docker Command
docker ps

# If docker command doesn't work
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

## Mac
Link: https://docs.docker.com/docker-for-mac/install/



# DEMO
## Python demo example
- Create New directory
```shell
mkdir sample-python-app
```
- touch app.py and paste following contents
```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Docker!'
```
- touch requirements.txt and paste the following content
```
Flask
```
- touch Dockerfile and paste the following content
```Dockerfile
FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
```

- Build the image
```shell
docker build --tag devops-class-python-sample .
```

- Push docker image to docker hub
```shell
docker login
docker push balman/sample-python-test
```

- Run on other machines
```shell
docker run -p5000:5000 balman/sample-python-test
```

# Tasks
  - Create docker hub account
  - containerize a simple hello world nodejs application

# Resources
- https://www.youtube.com/watch?v=pTFZFxd4hOI
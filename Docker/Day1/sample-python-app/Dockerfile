# Pulls the image like in vagrant
FROM python:3.8-slim-buster 

## cd /app equivalent
WORKDIR /app

## Copy requirements.txt to Docker container
COPY requirements.txt requirements.txt

## install the reuqired dependencies
RUN pip3 install -r requirements.txt

## Copy all the code to docker container
COPY . .

## Finally run the command
CMD python3 -m flask run --host=0.0.0.0  --port=8080

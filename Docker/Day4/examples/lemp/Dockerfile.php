FROM php:7-fpm
RUN apt update && apt install less iputils-ping -y
WORKDIR /devops-class
COPY . .
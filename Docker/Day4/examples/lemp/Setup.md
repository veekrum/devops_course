# Setting LEMP stack
## Manually
- Create Docker network
```shell
docker network create lemp-net
```
- Build nginx image
```shell
docker build . -f Dockerfile.nginx -t demo-nginx
```
- Build php-fpm image
```shell
docker build . -f Dockerfile.php -t demo-php
```
- Run php-fpm
```shell
docker run --rm --network lemp-net --name demo-php -v $(PWD):/devops-class demo-php
```

- Run nginx
```shell
docker run --network lemp-net --rm --name demo-nginx -d -p9090:80 -v $(PWD):/devops-class demo-nginx
```

## Docker compose
```shell
docker-compose up
```

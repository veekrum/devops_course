## Working with Images
#### Image Management Commands
```shell
docker images # show the list of all the images
docker history <image> #list of ansestor or commits
docker inspect <image> #show low level information of image in json format
docker tag <image> <tag name> #rename the image
docker rmi <image>  # remove the particular image
```

#### Image Transfer Commands
```shell
docker pull repo[:tag]  # pull the docker image from the repo
docker push repo[:tag]  # push the docker image to the docker hub/registry
docker search <txt>     # search an image on official registry
docker login
docker logout
```
## Working with Docker containers
#### Managing Containers
```shell
docker run <image-name> <command>     # runs the given command inside the container of the given image
docker stop <container>               # stops the running container
docker kill <container>               # force kill the running container
docker start <container>              # starts the stopped container
docker restart <container>            # restarts the running container
docker pause <container>              # suspend the running container
docker unpause <container>            # resume the running container
docker rm  <container>                # removes the stopped container
```

#### Inspecting Containers
```shell
docker ps
docker ps -a
docker logs [-f] <container>
docker top <container>  [ps options]
docker diff <container>
docker inspect <container>
```

#### Interacting with Containers
```shell
docker attach <container>   # attach to running container stdout/stdin/stderr, to cleanly exit ctrl + p and ctrl + q
docker cp <container-id>:<path> <host-path> # to copy from container to host
docker cp <host-path> <container-id>:<path> # to copy from host to container
docker exec -it <container-id> bash #jump inside the container to run commands
docker commit <container-id> <image name> #commit a new docker image
```


## Workshop
Containerize a python application manually
- Pull the base image
```shell
docker pull python:3.8-slim-buster
docker run -it python:3.8-slim-buster
```
- Create `/app` directory
```shell
mkdir /app
```
- Copy the `requirements.txt` file
```shell
docker cp requirements.txt <container-id>:/app
```
- Go to the `/app` directory and install the requirements
```shell
pip3 install -r requirements.txt
```
- Copy all the code to /app directory
```shell
docker cp . <container-id>:/app
```
- Commit the container changes
```shell
docker commit -m 'emnbed python code and dependency'  <container-id> <repo>[:tag]      
```
### Persitance in containers
By default all files created inside a container are stored on a writable container layer. Docker has two options for containers to store files in the host machine, so that the files are persisted even after the container stops: volumes, and bind mounts.

### Types of persistence
- Volume
    Volumes are stored in a part of the host filesystem which is managed by Docker (/var/lib/docker/volumes/ on Linux). Non-Docker processes should not modify this part of the filesystem. Volumes are the best way to persist data in Docker.
- Bindmount
    Bind mounts may be stored anywhere on the host system. They may even be important system files or directories. Non-Docker processes on the Docker host or a Docker container can modify them at any time.
- tmpfs(linux only): mounts are stored in the host system’s memory only, and are never written to the host system’s filesystem.

![persitance-storage](types-of-mounts.png)


### Details
#### Volumes
Created and managed by Docker. You can create a volume explicitly using the `docker volume create` command, or Docker can create a volume during container or service creation. A given volume can be mounted into multiple containers simultaneously. 

When no running container is using a volume, the volume is still available to Docker and is not removed automatically. You can remove unused volumes using `docker volume prune`. 

Volumes also support the use of volume drivers, which allow you to store your data on remote hosts or cloud providers, among other possibilities.

#### Bind mounts

Available since the early days of Docker. Bind mounts have limited functionality compared to volumes. When you use a bind mount, a file or directory on the host machine is mounted into a container. The file or directory is referenced by its full path on the host machine. The file or directory does not need to exist on the Docker host already. It is created on demand if it does not yet exist. Bind mounts are very performant, but they rely on the host machine’s filesystem having a specific directory structure available. 


#### Use Case of Volumes
- Sharing data among multiple running containers.
- When you want to save the data permanently
- When your application requires high-performance I/O on Docker Desktop.
- When you want to store your container’s data on a remote host or a cloud provider, rather than locally.
- Volumes on Docker Desktop have much higher performance than bind mounts from Mac and Windows hosts.
#### Use Case of binmounts
- Sharing configuration files from the host machine to containers.
- Sharing source code or build artifacts between a development environment on the Docker host and a container.

#### Commands
```shell
docker volume create my-vol
docker volume ls
docker volume inspect my-vol
docker volume inspect my-vol
```

#### Custom Volume driver
```shell
docker plugin install --grant-all-permissions vieux/sshfs
docker plugin ls
```


### Network Driver
#### bridge
The default network driver. If you don’t specify a driver, this is the type of network you are creating. Bridge networks are usually used when your applications run in standalone containers that need to communicate. 

- best when you need multiple containers to communicate on the same Docker host.

##### user-defined bridges and the default bridge
- Containers on the default bridge network can only access each other by IP addressess
- User-defined bridges provide better isolation because by all the container use the default bridge network.
- Containers can be attached and detached from user-defined networks on the fly.
- Each user-defined network creates a configurable bridge.
- Linked containers on the default bridge network share environment variables.

##### Create Userdefined Bridge Network
```shell
docker network create my-net
docker network rm my-net

docker run -d --name nginx \
  --network my-net \
  --publish 8080:80 \
  nginx:latest
```

#### host
For standalone containers, remove network isolation between the container and the Docker host, and use the host’s networking directly

-  best when the network stack should not be isolated from the Docker host, but you want other aspects of the container to be isolated.


#### overlay
Overlay networks connect multiple Docker daemons together and enable swarm services to communicate with each other.

- best when you need containers running on different Docker hosts to communicate, or when multiple applications work together using swarm services.

#### macvlan: 
Macvlan networks allow you to assign a MAC address to a container, making it appear as a physical device on your network.

- best when you are migrating from a VM setup or need your containers to look like physical hosts on your network, each with a unique MAC address.

#### none: 
For this container, disable all networking. Usually used in conjunction with a custom network driver.


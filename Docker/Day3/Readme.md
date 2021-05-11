## Dockerfile
  A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Docker can build images automatically by reading the instructions from a Dockerfile

### Format
INSTRUCTION arguments

## .dockerignore
Before the docker CLI sends the context to the docker daemon, it looks for a file named .dockerignore in the root directory of the context. If this file exists, the CLI modifies the context to exclude files and directories that match patterns in it. This helps to avoid unnecessarily sending large or sensitive files and directories to the daemon and potentially adding them to images using ADD or COPY.

```
# comment
*/temp*     # Exclude files and directories whose names start with temp in any immediate subdirectory of the root.
*/*/temp*   # Exclude files and directories starting with temp from any subdirectory that is two levels below the root. 
temp?       # Exclude files and directories in the root directory whose names are a one-character extension of temp.
*.md        # Exclude all the mark down format file
```

## Instructions
### FROM
The FROM instruction pulls the new Base Image for subsequent instructions. A valid Dockerfile must start with a FROM instruction with the exception to the ARG command.

Syntax
```Dockerfile
FROM [--platform=<platform>] <image> [AS <name>] OR
FROM [--platform=<platform>] <image>[:<tag>] [AS <name>] OR
FROM [--platform=<platform>] <image>[@<digest>] [AS <name>]
```

Examples:

```Dockerfile
FROM --platform=linux/amd64 nginx
```

```Dockerfile
FROM nginx AS 
```

```Dockerfile
ARG  CODE_VERSION=latest
FROM node:${CODE_VERSION}
CMD  /code/run-app
```

### ENV
Environment variables can also be used in certain instructions as variables to be interpreted by the Dockerfile.

Syntax
```Dockerfile
ENV <key>=<value> ...
ENV key value
```

Example:
```dockerfile
FROM busybox
ENV FOO=/bar
WORKDIR ${FOO}
WORKDIR $FOO
```


### RUN
runs command in a shell. `/bin/sh` on linux and `cmd` on windows.
Syntax:
```Dockerfile
RUN <command> OR
RUN ["executable", "param1", "param2"]
```

Example
```Dockerfile
FROM ubuntu
RUN apt update && apt install -y vim htop curl
```

### CMD
The main purpose of a CMD is to provide defaults for an executing container. There can only be one CMD instruction in a Dockerfile. If you list more than one CMD then only the last CMD will take effect.

Syntax
```Dockerfile
CMD ["executable","param1","param2"] OR
CMD ["param1","param2"] OR
CMD command param1 param2
```

Example
```Dockerfile
FROM ubuntu
CMD ls
```

### LABEL
The LABEL instruction adds metadata to an image. A LABEL is a key-value pair. To include spaces within a LABEL value, use quotes and backslashes as you would in command-line parsing. 

Syntax:

```Dockerfile
LABEL "com.example.vendor"="ACME Incorporated"
LABEL com.example.label-with-value="foo"
LABEL version="1.0"
LABEL description="This text illustrates \
that label-values can span multiple lines."
```

### EXPOSE
he EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime. You can specify whether the port listens on TCP or UDP, and the default is TCP if the protocol is not specified. 

The EXPOSE instruction does not actually publish the port. It functions as a type of documentation between the person who builds the image and the person who runs the container, about which ports are intended to be published.

Syntax:
```Dockerfile
EXPOSE <port> [<port>/<protocol>...]
```

Example:
```
EXPOSE 80/tcp
EXPOSE 80/udp
```

### ADD
The ADD instruction copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the image at the path <dest>.

Syntax:
```Dockerfile
ADD [--chown=<user>:<group>] <src>... <dest>  OR
ADD [--chown=<user>:<group>] ["<src>",... "<dest>"]
```

Example:
```Dockerfile
ADD hom* /mydir/
ADD hom?.txt /mydir/
ADD test.txt relativeDir/
ADD test.txt /absoluteDir/
ADD arr[[]0].txt /mydir/
ADD --chown=55:mygroup files* /somedir/
ADD --chown=10:11 files* /somedir/
```

### COPY
The COPY instruction copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>.
Syntax:
```Dockerfile
COPY [--chown=<user>:<group>] <src>... <dest>
COPY [--chown=<user>:<group>] ["<src>",... "<dest>"]
```

Examples:
```Dockerfile
COPY hom* /mydir/
COPY hom?.txt /mydir/
COPY test.txt relativeDir/
COPY test.txt /absoluteDir/
COPY arr[[]0].txt /mydir/
COPY --chown=55:mygroup files* /somedir/
COPY --chown=bin files* /somedir/
COPY --chown=1 files* /somedir/
COPY --chown=10:11 files* /somedir/
```

### ENTRYPOINT
An ENTRYPOINT allows you to configure a container that will run as an executable.

Syntax:
```Dockerfile
ENTRYPOINT command param1 param2 OR
ENTRYPOINT ["executable", "param1", "param2"]
```

Example:
```Dockerfile
FROM ubuntu
ENTRYPOINT ["top", "-b"]
CMD ["-c"]
```

### VOLUME
The VOLUME instruction creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers.
Syntax:
```Dockerfile
VOLUME ["/data"]
```

### USER

Syntax:
```Dockerfile
USER <user>[:<group>] OR
USER <UID>[:<GID>]
```

### WORKDIR
Syntax:
```Dockerfile
WORKDIR /path/to/workdir
```

### ARG
The ARG instruction defines a variable that users can pass at build-time to the builder with the docker build command using the --build-arg <varname>=<value> flag.
Syntax:
```Dockerfile
ARG <name>[=<default value>]
```

Example:
```Dockerfile
FROM busybox
ARG user1=someuser
ARG buildno=1
```

### HEALTHCHECK
The HEALTHCHECK instruction tells Docker how to test a container to check that it is still working. 
Syntax:
```Dockerfile
HEALTHCHECK [OPTIONS] CMD command # check container health by running a command inside the container OR
HEALTHCHECK NONE # disable any healthcheck inherited from the base image
```
The options that can appear before CMD are:

--interval=DURATION (default: 30s)
--timeout=DURATION (default: 30s)
--start-period=DURATION (default: 0s)
--retries=N (default: 3)

Examples:
```Dockerfile
HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1
```


## Resources
https://www.youtube.com/watch?v=EmCRj5O4UZE
https://docs.docker.com/engine/reference/builder/#onbuild
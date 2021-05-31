## Install jenkins
    - docker run -idt --name jenkins -v jenkins_home:/var/jenkins_home  -v /var/run/docker.sock:/var/run/docker.sock  -p 8080:8080 -p 50000:50000 jenkins/jenkins
    - docker logs jenkins ## you will see the initialpass

## installed 
    - docker plugin and docker pipeline for building in docker

## Todays demo
    - Role based matrix
    - jenkinsfile with manual build
    - web hook github with manual build 

## LINK 
    - https://www.youtube.com/watch?v=v-AVR0UoB-c


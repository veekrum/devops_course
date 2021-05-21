## CI/CD

## INstall jenkins
    - docker run -idt --name jenkins -v jenkins_home:/var/jenkins_home  -v /var/run/docker.sock:/var/run/docker.sock  -p 8080:8080 -p 50000:50000 jenkins/jenkins
    - docker logs jenkins ## you will see the initialpass

## video link
    - https://www.youtube.com/watch?v=v-AVR0UoB-c

## installed 
    - docker plugin and docker pipeline for building in docker

## todays class
day2
    - Role based matrix
    - jenkinsfile with manual build
    - web hook github with manual build

day3
    - web hook with jenkinsfile
    - polling scm
    - node project with jenkins file
    - python project with jenkins file
    - upstream built projects

    















-----

    echo | openssl s_client -connect google.com:443 2>/dev/null | openssl x509 -noout -dates | grep notAfter

    echo | openssl s_client -connect google.com:443 2>/dev/null | openssl x509 -noout -dates | grep notAfter | awk -F"=" '{print $2}'
    
    var = expiry.results[0].stderr_lines

    expiry.results[0].stdout_lines
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
    - maven project 

    
day4:
    - ci/cd the node project from   
        - git clone the node project - https://github.com/contentful/the-example-app.nodejs
        - add Jenkinsfile
        - add the webhook - optional
        - add the keys to the global keys for docker login
        - create a job for CI - production-CI
        - run the job
        - create a docker-compose file for automation
        - create the job for deployment - production-deploy
        - create job pipeline
        - production-CI -> production-deploy
        - make a changes in the see the deployment








curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World!"}' mhGuis02fmCDSyjLFJ1GXcUL


      - run:
          name: running deployment
          command: curl -u veekrum:11fb0ed52d92e0385d3ab9d22b1256b115 http://167.71.244.101:8080/view/QA/job/QA-cicd_deploy_demo/build?token=wefiytgwiefiweihfqweiodf



-----

    echo | openssl s_client -connect google.com:443 2>/dev/null | openssl x509 -noout -dates | grep notAfter

    echo | openssl s_client -connect google.com:443 2>/dev/null | openssl x509 -noout -dates | grep notAfter | awk -F"=" '{print $2}'
    
    var = expiry.results[0].stderr_lines

    expiry.results[0].stdout_lines


    
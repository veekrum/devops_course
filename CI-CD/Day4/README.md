## requirement
   - make sure you create credentials for dockerhub
   - create a webhook in the github

## Follow this instructions
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
    - make a changes in code and see the deployment

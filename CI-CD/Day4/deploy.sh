scp /var/lib/jenkins/workspace/production-test/docker-compose.yml root@167.99.125.65:~/

##ssh root@167.99.125.65 'bash /dev/stdin' "docker-compose up -d"
ssh root@167.99.125.65 "docker pull veekrum/test-demo-node:latest; docker-compose up -d"

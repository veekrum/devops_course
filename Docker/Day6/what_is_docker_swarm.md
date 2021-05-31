## Docker swarm 
    - Docker Swarm is a clustering and Orchestration tool for Containers which is inbuilt in Docker Engine for the distributed system which involves hundreds of containers.
    - Docker Node, Docker Services, and Docker tasks are key components of Docker swarm architecture.

## components
    - Docker Node: It is the Docker Engine instance included in Docker swarm, has  two kinds:
    - Manager Node: Responsible for all orchestration and container management tasks required to maintain the system in the desired state such as maintaining the cluster state, scheduling the services and servicing the swarm mode HTTP endpoints.
    - Docker Service: It is the task definition that needs to be executed.

## Typical Docker Swarm Architecture
    - Node is the key member of docker swarm architecture, a swarm architecture can have more than one manager nodes lead by a single manager node elected using the Raft algorithm, a manager node can also work as a worker node but can be configured to work as manager node too.
    - Manager nodes use the Raft Consensus Algorithm to internally manage the cluster state. This is to ensure that all manager nodes that are scheduling and controlling tasks in the cluster maintain/store consistent state.
    - A swarm is a cluster of Docker Engines or nodes, where we deploy our services. At the early stage, Docker came up with a cluster management system with a communication protocol known as Beam. Later on, they added more API’s and renamed it to swarm. The first generation swarm is called ‘swarm v1’.

## Benefits of Docker Swarm
    - Decentralized design: we can manage swarm clusters through swarm command, It gives single p[oint of access to build entire swarm.
    - It is very simple compared to Kubernetes.
    - High Availability: Among the nodes available in swarm if master fails another worker node will take upcharge.
    - Desired state Reconciliation: The swarm manager keeps track of the cluster state so that the desired and actual state is always the same.
    - When we specify an over network to connect to your services, the swarm manager assigns addresses to the container on overlay network once we create /update the containers
    - Rolling Updates: Service updates can be done incrementally swarm manager allows you to specify the delay between every update without any downtime.

## docker swarm
    - docker swarm init --advertise-addr MANAGER_IP
    - docker node ls ## see the information of nodes
    - docker info ## information about the node
    - docker service create --replicas 5 -p 80:80 --name web nginx
    - docker service ls
    - docker service ps web
    - docker service scale sample=4
    - docker service update --image  nginx:1.14.0 sample ## updating the version of app
    - docker node update --availability drain node2
    - docker service update sample
    - docker service rm sample
    - docker node promote/demote node-name

## LINK
    - https://www.educba.com/docker-swarm-architecture/
    - https://rominirani.com/docker-swarm-tutorial-b67470cf8872

    
## docker swarm demo with docker compose
    - https://github.com/lsapan/docker-swarm-demo

## commands
    - docker service scale demo_web=4
    - docker service rollback demo_web
    - testing -> for i in {1..20}; do curl localhost:8000; done
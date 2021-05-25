## About Prometheus 
    - https://www.infracloud.io/blogs/prometheus-architecture-metrics-use-cases/
## setup
    - git clone https://github.com/stefanprodan/dockprom.git
    - cd dockprom
    - ADMIN_USER=admin ADMIN_PASSWORD=admin ADMIN_PASSWORD_HASH=JDJhJDE0JE91S1FrN0Z0VEsyWmhrQVpON1VzdHVLSDkyWHdsN0xNbEZYdnNIZm1pb2d1blg4Y09mL0ZP docker-compose up -d
    -   
## set up the node exporter agent
    - follow this link -: https://back2basics.io/2020/04/setup-a-prometheus-node-exporter-on-ubuntu-18-04-server-for-the-raspberry-pi
    - wget https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-amd64.tar.gz
    - if the node-exporter doesnot starts then run below command and restart
    - chown node_exporter:node_exporter /usr/local/bin/node_exporter

## list of exporters
    - https://prometheus.io/docs/instrumenting/exporters/

## About promtail-loki-grafana stack
    - loki is the prometheus like tool but specific for logs
    - promtail is the agent used to push the log to the loki
    - grafana is the graphical interface for loki

## Installation
    - loki
        - wget https://raw.githubusercontent.com/grafana/loki/v2.2.1/cmd/loki/loki-local-config.yaml -O loki-config.yaml
        - docker run -v $(pwd):/mnt/config -p 3100:3100 grafana/loki:2.2.1 -config.file=/mnt/config/loki-config.yaml
        - verify - http://<IP>:3100/metrics
    - promtail
        - wget https://raw.githubusercontent.com/grafana/loki/v2.2.1/cmd/promtail/promtail-docker-config.yaml -O promtail-config.yaml
        - change the client and log path inside the promtail-config.yaml
        - docker run -v $(pwd):/mnt/config -v /var/log:/var/log grafana/promtail:2.2.1 -config.file=/mnt/config/promtail-config.yaml
    - grafana
        - add the data source as loki
        - Now you can create a free style dashboard or you can import the dashbaord from grafana dashboard
    Ref link - https://grafana.com/docs/loki/latest/installation/docker/

## scenario and hansdon
    - We will see the how one can use the telegraf as a agent instead of node_exporter and use prometheus and grafana for visulization
    - we will see how the alerting works in grafana


    
    
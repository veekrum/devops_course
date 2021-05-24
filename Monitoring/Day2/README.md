##  Install prometheu
    - goto Day1 and install node_exporter
    - configure the prometheus/prometheus.yml
    - add this block inside the prometheus.yml
        - job_name: 'app1'
          scrape_interval: 10s
          honor_labels: true
          static_configs:
            - targets: ['<IP>:9100']

    - re build the docker-container
        - docker-compose up --force-recreate -d
    - login to grafana, and import the dashboard
    - find the dashboard from here - https://grafana.com/grafana/dashboards
    - and import and run and see the dashboards
    - for prometheus quering - https://prometheus.io/docs/prometheus/latest/querying/basics/



    
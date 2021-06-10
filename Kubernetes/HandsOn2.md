## Kubernetes Horizontal Pod Autoscaling
    - With Horizontal Pod Autoscaling, Kubernetes automatically scales the number of pods in a replication controller, 
      deployment or replica set based on observed CPU utilization
### Prerequisites
    - Heapster monitoring needs to be deployed in the cluster as Horizontal Pod Autoscaler uses it to collect metrics.

## secrets : https://github.com/schoolofdevops/kubernetes-labguide/blob/master/tutorials/8_using_configmaps_and_secrets.md
## configmap

## DEMO
    - https://github.com/dglib/k8s-autoscale


## what is Helm
    - package manager for kubernetes eg- apt,yum
    - helm search/ helm 
    - templating engine
    - structure
        - mychart
            Chart.yaml
            values.yaml
            charts/
            templates/
## DEMO 
    - https://jhooq.com/building-first-helm-chart-with-spring-boot/


## HPA 
    - kubectl get ing -n apache-php
    - kubectl autoscale deployments apache-php-dep --cpu-percent=50 --min=1 --max=10 horizontalpodautoscaler.autoscaling apache-php-dep autoscaled -n apache-php

## Links
    - https://github.com/kubernetes-retired/heapster
    - https://github.com/kubernetes-sigs/metrics-server
    - https://github.com/dglib/k8s-autoscale
    - https://github.com/vivekamin/kubernetes-hpa-example
    - https://www.howtoforge.com/how-to-deploy-a-multi-tier-application-with-kubernetes/
    - https://blog.mayadata.io/openebs/steps-to-deploy-angular-application-on-kubernetes

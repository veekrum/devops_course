## Commands
    - kubectl version/ kubectl version --short
    - kubectl cluster-info
    - kubectl get pods -n kube-system
    - kubectl get events ## to see the commands ran by master
    - kubectl logs <pod> -n kube-system ## for debugging
    - kubectl to ssh

### Enabling the Dashboard
    NOTE* - this is used if you are managing your own cluster, if you are using the managed service from cloud provider, no need to do this.
    - kubectl apply -f https://gist.githubusercontent.com/initcron/32ff89394c881414ea7ef7f4d3a1d499/raw/baffda78ffdcaf8ece87a76fb2bb3fd767820a3f/kube-dashboard.yaml
    - kubectl describe svc kubernetes-dashboard -n kube-system

## deployment
    - copy the kube-deployment.yml
    - create a namespace named devops
        - kubectl apply -f devops-ns.yml
    - deploy the nginx 
        - kubectl apply -f kube-deployment.yml -n devops
    - check the deployments
        - kubectl get deployments [ get all deployments ]
        - kubectl get rs
        - kubectl get pods --show-labels
        - kubectl get nodes --show-labels
        - kubectl describe pods pod_name
        - kubectl logs -f deployment/web [ deployment name from deployment ]
    - scale the pods
        - kubectl scale deployments/words --replicas=15
        - see the changes in web UI, different words-container serving on each request
    - delete the deployment
        - kubectl delete -f kube-deployment.yml

## IMP Links
    - https://www.educba.com/kubernetes-selector/
    - https://github.com/dockersamples/k8s-wordsmith-demo
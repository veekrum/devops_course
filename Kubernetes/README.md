## What is kubernetes
    - Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.

## Why Kubernetes
    - Containers are a good way to bundle and run your applications. In a production environment, you need to manage the containers that run the applications and ensure that there is no downtime. For example, if a container goes down, another container needs to start. Wouldn't it be easier if this behavior was handled by a system?
    - That's how Kubernetes comes to the rescue! Kubernetes provides you with a framework to run distributed systems resiliently. It takes care of scaling and failover for your application, provides deployment patterns, and more. For example, Kubernetes can easily manage a canary deployment for your system.

## LINK
    - https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/

## kubernetes components
    - When you deploy Kubernetes, you get a cluster. you get master and worker[nodes]. The worker node(s) host the Pods that are the components of the application workload. 

    - control plane components
        - kube-apiserver 
            -  it exposes the Kubernetes API, The API server is the front end for the Kubernetes control plane.
        - etcd
            - Consistent and highly-available key value store used as Kubernetes' backing store for all cluster data.
        - kube-scheduler 
            - Control plane component that watches for newly created Pods with no assigned node, and selects a node for them to run on.
 
    - kube-controller-manager 
        - Node controller: Responsible for noticing and responding when nodes go down.
        - Job controller: Watches for Job objects that represent one-off tasks, then creates Pods
          to run those tasks to completion.
        - Endpoints controller: Populates the Endpoints object (that is, joins Services & Pods).
        - Service Account & Token controllers: Create default accounts and API access tokens for new  namespaces.
    
    - Node Components
        - kubelet 
            - An agent that runs on each node in the cluster. It makes sure that containers are running in a Pod.
        - kube-proxy 
            - kube-proxy is a network proxy that runs on each node in your cluster, implementing part of the Kubernetes Service concept.It maintains network rules on nodes.
    
## what is Namespace
    - Kubernetes supports multiple virtual clusters backed by the same physical cluster. These virtual clusters are called namespaces. Namespaces are a way to divide cluster resources between multiple users(using resources quota)
    - for creating namespac: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/#creating-a-new-namespace

## kubeadm
    - Kubeadm is a tool built to provide kubeadm init and kubeadm join as best-practice "fast paths" for creating Kubernetes clusters.
    - link : https://kubernetes.io/docs/reference/setup-tools/kubeadm/

## kubectl 
    - The kubectl command line tool lets you control Kubernetes clusters.

## minikube
    - minikube is a tool that lets you run Kubernetes locally. minikube runs a single-node Kubernetes cluster on your personal computer (including Windows, macOS and Linux PCs) so that you can try out Kubernetes


## Commands
    - kubectl version/ kubectl version --short
    - kubectl cluster-info
    - kubectl get pods -n kube-system
    - kubectl get events ## to see the commands ran by master
    - kubectl logs <pod> -n kube-system ## for debugging

### Enabling the Dashboard
    - kubectl apply -f https://gist.githubusercontent.com/initcron/32ff89394c881414ea7ef7f4d3a1d499/raw/baffda78ffdcaf8ece87a76fb2bb3fd767820a3f/kube-dashboard.yaml
    - kubectl describe svc kubernetes-dashboard -n kube-system

## deployment
    - https://github.com/dockersamples/k8s-wordsmith-demo
    - copy the kube-deployment.yml
    - create a namespace named devops
        - kubectl apply -f devops-ns.yml
    - deploy the nginx 
        - kubectl apply -f kube-deployment.yml -n devops
    - check the deployments
        - kubectl get deployments
        - kubectl get rs
        - kubectl get pods --show-labels
        - kubectl get nodes --show-labels
        - kubectl describe pods
    - scale the pods
        - kubectl scale deployments/words --replicas=5
        - see the changes in web UI
    - delete the deployment
        - kubectl delete -f kube-deployment.yml
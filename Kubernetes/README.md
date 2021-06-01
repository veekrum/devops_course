## What is kubernetes
    - Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.

## Why Kubernetes
    - Containers are a good way to bundle and run your applications. In a production environment, you need to manage the containers that run the applications and ensure that there is no downtime. For example, if a container goes down, another container needs to start. Wouldn't it be easier if this behavior was handled by a system?
    - That's how Kubernetes comes to the rescue! Kubernetes provides you with a framework to run distributed systems resiliently. It takes care of scaling and failover for your application, provides deployment patterns, and more. For example, Kubernetes can easily manage a canary deployment for your system.

## LINK
    - https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/

## kubernetes components
    - When you deploy Kubernetes, you get a cluster. you get master and worker[nodes]. The worker node(s) host the Pods that are the components of the application workload. 
    - Master Node Components
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
    
    - Worker Node Components
        - kubelet [node-agent]
            - An agent that runs on each node in the cluster. It makes sure that containers are running in a Pod.
        - kube-proxy 
            - kube-proxy is a network proxy that runs on each node in your cluster, implementing part of the Kubernetes Service concept.It maintains network rules on nodes.
        - Workload
            - pods running with the task on it
    
## what is Namespace
    - Kubernetes supports multiple virtual clusters backed by the same physical cluster. These virtual clusters are called namespaces. Namespaces are a way to divide cluster resources between multiple users(using resources quota)
    - for creating namespac: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/#creating-a-new-namespace

## kubeadm
    - Kubeadm is a tool built to provide kubeadm init and kubeadm join as best-practice "fast paths" for creating Kubernetes clusters.
    - link : https://kubernetes.io/docs/reference/setup-tools/kubeadm/

## kubectl 
    - The kubectl command line tool lets you control Kubernetes clusters.
    - Installation link : https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/

## minikube
    - minikube is a tool that lets you run Kubernetes locally. minikube runs a single-node Kubernetes cluster on your personal computer (including Windows, macOS and Linux PCs) so that you can try out Kubernetes

## context [working with multiple clusters]
    - kubectl config current-context  ## get current cluster
    - kubectl config get-contexts     ## get all the name of clusters
    - kubectl config use-context <context_name>  ## to use the certain clusters
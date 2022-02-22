<img align="right" src="./assets/k8s-logo.png" width="100">

For this scenario, you have to build kubernetes cluster using minikube


`minikube start --nodes 3 -p multinode`{{execute}}


For verify the cluster is running

`kubectl get node`{{execute}}

It should list a 2-node cluster and the control plane components should be reporting _Healthy_. If it's not healthy, try again in a few moments. If it's still not functioning refresh the browser tab to start a fresh scenario instance before proceeding.


Check the kubernetes version
`kubectl version --short`{{execute}}


Details of the cluster and its health status can be discovered via
`kubectl cluster-info`{{execute}}
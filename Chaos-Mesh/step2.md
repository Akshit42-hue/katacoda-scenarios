<img align="right" src="./assets/helm.png" width="100">

[Helm](https://helm.sh/) package manager used for installing applications on Kubernetes.

Make sure you have install Helm in your local system 
for verify that helm is install in your system properly
run the following code.

`helm version`{{execute}}


Add Chaos-Mesh repo to the helm repo

`helm repo add chaos-mesh https://charts.chaos-mesh.org`{{execute}}


Create the namespace to install Chaos Mesh

`kubectl create ns chaos-mesh`{{execute}}


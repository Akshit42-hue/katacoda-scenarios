<img align="right" src="./assets/chaos-mesh.png" width="150">

Install Chaos Mesh in container.

`helm install chaos-mesh chaos-mesh/chaos-mesh -n=chaos-mesh --set chaosDaemon.runtime=containerd --set chaosDaemon.socketPath=/run/containerd/containerd.sock --version 2.1.3`{{execute}}

Verify the installation.

`kubectl get all -n chao-mesh`{{execute}}

Optimally, the Pod status should say _Running_ in about ~15 seconds.


The control plane components for the Chaos Mesh are:

- chaos=controller-manager: This is used to schedule and manage the lifecycle of chaos experiments. (This is a misnomer. This should be just named _controller_, not _controller-manager_, as its the controller based on the Operator Pattern. The controller-manager is the Kubernetes control plane component that manages all the controllers like this one).
- chaos-daemon: These are the Pods that control the chaos mesh. The Pods run on every cluster Node and are wrapped in a DaemonSet. These DaemonSets have privileged system permissions to access each Node's network, cgroups, chroot, and other resources that are accessed based on your experiments.
- chaos-dashboard: An optional web interface providing you an alternate means to administer the engine and experiments. Its use is for convenience and any production use of the engine should be through the YAML resources for the Chaos Mesh CRDs.


You can check Chaos-mesh version by running following command

`helm search repo chaos-mesh`{{execute}}

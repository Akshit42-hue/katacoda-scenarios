Uninstall Chaos Mesh

`helm uninstall chaos-mesh -n chaos-mesh`{{execute}}

For verify the uninstallation 

`kubectl get po -n chaos-mesh`{{execute}}

The Pod status should say _terminating_ or `no resource found in chaos-mesh namespace` will be appear
that means you have uninstall chaos-mesh

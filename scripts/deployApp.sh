ibmcloud ks cluster config --cluster bmi9k3od0vl582c930vg
export KUBECONFIG=/Users/$USER/.bluemix/plugins/container-service/clusters/bmi9k3od0vl582c930vg/kube-config-hou02-mycluster.yml
kubectl scale deployment inframind-app --replicas=0
kubectl scale deployment inframind-app --replicas=1
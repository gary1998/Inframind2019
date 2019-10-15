docker login -u gary29198 -p 0001221149
docker build -t gary29198/inframind-app:latest ./app
docker push gary29198/inframind-app:latest
docker build -t gary29198/inframind-db:latest ./db
docker push gary29198/inframind-db:latest
export KUBECONFIG=jenkins/cluster/cluster.yml
kubectl scale deployment inframind-app --replicas=0
kubectl scale deployment inframind-app --replicas=1
kubectl scale deployment inframind-db --replicas=0
kubectl scale deployment inframind-db --replicas=1
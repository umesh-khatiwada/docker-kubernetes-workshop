echo -n 'admin' | base64
echo -n 'password' | base64



kubectl apply -f nginx-secret.yaml
kubectl apply -f nginx-configmap.yaml
kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml


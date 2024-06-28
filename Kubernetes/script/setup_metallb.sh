echo "Installing metalLB"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.13.5/config/manifests/metallb-native.yaml
sleep 5
while true
do
    ready=`kubectl get pod -n metallb-system -l component=controller | grep controller | awk '{print $2}'`
    if [ "$ready" == "1/1" ]
    then
        break
    fi
    echo "Metallb status :: $ready, sleeping for 10 seconds..."
    sleep 10
    done
network=$(docker network inspect -f '{{.IPAM.Config}}' kind | awk '{print $1}' | cut -f 1,2 -d '.' | cut -f 1 -d '{' --complement)
if [ -z "$network" ]
then
    network="172.18"
fi
printf "apiVersion: metallb.io/v1beta1\nkind: IPAddressPool\nmetadata:\n  name: example\n  namespace: metallb-system\nspec:\n  addresses:\n  - $network.254.200-$network.254.250\n---\napiVersion: metallb.io/v1beta1\nkind: L2Advertisement\nmetadata:\n  name: empty\n  namespace: metallb-system" | kubectl apply -f -
sleep 10
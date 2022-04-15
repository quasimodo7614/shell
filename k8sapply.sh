
sed -i "414c \ \ \ \ \ \ \ \ image: $1" /root/xxx.yaml
#k-agd apply -f /root/tenanthubserver.yaml
kubectl --kubeconfig=xxx apply -f /root/xxx.yaml
sed -i "372c \ \ \ \ \ \ \ \ image: $1" /root/xxx.yaml

from=$1
sh ~/cpimage $from
export KUBECONFIG="/kube/config"
tag=${from##*:}
alias sed=gsed
sed -i "101c \ \ tag: $tag" "/yourfile/.values.yaml"

helm upgrade xx -n ns manifests/tenanthub-server/ -f /yourfile/.values.yaml
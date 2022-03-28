for ns in $( kubectl get ns | awk '{if (NR>2){print $1}}' |grep 'abc\|xtest')
do
  echo $ns
  sed "s/namespace: default/namespace: $ns/g"  defaultrole.yaml > /tmp/role.yaml
  kubectl apply -f /tmp/role.yaml

done
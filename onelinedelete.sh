for ns in $(kubectl get crd -A | awk '{if (NR>2){print $1}}' |grep 'xxxx') ;do kubectl delete crd $ns -n$ns; done
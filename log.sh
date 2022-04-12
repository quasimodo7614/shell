for  po in $(kubectl get po -A |grep xxx| awk '{if (NR>0){print $2}}')
do
  echo $po
  kubectl logs -n default $po |grep $1 -A 35

done
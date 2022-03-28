#/bin/bash

from=$1
tag=${from##*/}

to='vecps.cargo.io/infcprelease/'

result=$(echo $tag | grep "iam")
if [[ "$result" != "" ]]
then
    to='vecps.cargo.io/iaas/'
fi

docker pull $from

echo '============= pull finish ============='

to="$to$tag"


docker tag "$from" "$to"

echo "======== tag finish:$to"

#docker push "$to"
docker save "$to" | gzip >ctr.tgz
scp -i ./byte-KeyPair.pem ctr.tgz root@36.110.140.184:/tmp/
ssh -i ./byte-KeyPair.pem root@36.110.140.184 "sh /root/th.sh $to"
echo '======= push finish ================^_^'
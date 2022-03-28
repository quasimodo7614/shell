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

docker push "$to"

echo '======= push finish ================^_^'
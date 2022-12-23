#!/bin/bash -x

myhost=`hostname`

if [ "$myhost" = "debian-gnu-linux-10" ]; then
    export MYCMD="minikube kubectl --"
else
    export MYCMD="kubectl"
fi

docker login docker.io/evansjr

$MYCMD apply -f example/


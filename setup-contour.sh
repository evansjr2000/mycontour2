#!/bin/bash

myhost=`hostname`

if [ "$myhost" = "debian-gnu-linux-10" ]; then
    export MYCMD="minikube kubectl --"
else
    export MYCMD="kubectl"
fi

export INC=5

$MYCMD apply -f https://projectcontour.io/quickstart/contour.yaml

sleep $INC

$MYCMD get po,svc,deploy,daemonset -n projectcontour




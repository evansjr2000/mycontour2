#!/bin/bash 

myhost=`hostname`

if [ "$myhost" = "debian-gnu-linux-10" ]; then
    export MYCMD="minikube kubectl --"
else
    export MYCMD="kubectl"
fi

set -x

$MYCMD get po,svc,deploy,daemonset -n projectcontour


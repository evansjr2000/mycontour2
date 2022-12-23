#!/bin/bash -x

myhost=`hostname`

if [ "$myhost" = "debian-gnu-linux-10" ]; then
    export MYCMD="minikube kubectl --"
else
    export MYCMD="kubectl"
fi

$MYCMD delete deployment app1 -n app1
$MYCMD delete service app1 -n app1
$MYCMD delete httpproxy app1 -n app1

$MYCMD delete deployment app2 -n app2
$MYCMD delete service  app2 -n app2
$MYCMD delete httpproxy  app2 -n app2


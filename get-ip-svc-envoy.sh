#!/bin/bash


myhost=`hostname`

if [ "$myhost" = "debian-gnu-linux-10" ]; then
    export MYCMD="minikube kubectl --"
else
    export MYCMD="kubectl"
fi


INGRESS_IP=$($MYCMD get svc -n projectcontour envoy -o jsonpath='{.status.loadBalancer.ingress[0].ip}')

echo "INGRESS_IP = $INGRESS_IP"


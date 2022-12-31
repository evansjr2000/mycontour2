#!/bin/bash -x


if [ -z "$INGRESS_IP" ]; then
    export INGRESS_IP=localhost
fi

if [ -z "$FQDN" ]; then
    export FQDN="foo.bar.com"
fi

curl -H "host:${FQDN}" $INGRESS_IP/app1



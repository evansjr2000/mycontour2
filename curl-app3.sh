#!/bin/bash -x

export INGRESS_IP=localhost
export FQDN="foo.bar.com"

curl -H "host:${FQDN}" $INGRESS_IP/app3/cookies



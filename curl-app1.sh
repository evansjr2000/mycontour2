#!/bin/bash

export INGRESS_IP=10.96.184.122

curl -H "host:myapps" $INGRESS_IP/app1



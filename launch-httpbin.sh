#!/bin/bash -x

# Test it out!
#Congratulations, you have installed Contour and Envoy! Let’s install a web application workload and get some traffic flowing to the backend.

# To install httpbin, run the following:

kubectl apply -f https://projectcontour.io/examples/httpbin.yaml

# Verify the pods and service are ready by running:
sleep 5

kubectl get po,svc,ing -l app=httpbin

# You should see the following:

# 3 instances of pods/httpbin, each with status Running and 1/1 Ready
# 1 service/httpbin CLUSTER-IP listed on port 80
# 1 Ingress on port 80

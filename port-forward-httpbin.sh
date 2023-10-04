#!/bin/bash -x

## If using YAML
kubectl -n projectcontour port-forward service/envoy 8888:80

# If using Helm
# $ kubectl -n projectcontour port-forward service/my-release-contour-envoy 8888:80

# If using the Gateway provisioner
# $ kubectl -n projectcontour port-forward service/envoy-contour 8888:80

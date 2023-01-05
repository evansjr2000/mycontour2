#!/bin/bash -x
#imgpkg copy -i evansjr/confluence-lts-7.19.4:latest --to-tar=./mycontainer.tar
date.sh
time aws s3 cp  ./mycontainer.tar s3://ept-resources-test/files/mycontainer.tar
date.sh

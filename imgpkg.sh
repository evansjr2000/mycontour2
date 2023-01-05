#!/bin/bash -x

#export VERS='7.19.4'
export VERS='latest'

MYCONTAINER=evansjr/basic-web-server

imgpkg copy -i $MYCONTAINER:${VERS} --to-tar=./mycontainer.tar

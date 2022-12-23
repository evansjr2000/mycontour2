#!/bin/bash -x

docker build -t evansjr/basic-web-server:latest .

docker push evansjr/basic-web-server:latest

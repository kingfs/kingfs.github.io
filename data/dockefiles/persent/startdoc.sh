#!/bin/bash

docker run -d -p 3999:3999 -p 9000:9000 -v /root/.ssh:/root/.ssh docker-hub.cloud.top/vdfw/doc:1.1

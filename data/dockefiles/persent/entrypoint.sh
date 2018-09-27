#!/bin/bash

cd /root
git clone ssh://git@git.cloud.top:222/vdfw/doc.git 

cd /root/doc

nohup /usr/local/bin/present -orighost 172.19.22.3  -notes -http 0.0.0.0:3999 &

exec /usr/local/bin/webhook -hooks /root/gitlab.json -ip 172.19.22.3 -port 9000
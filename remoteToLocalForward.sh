#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Usage $0 [start/stop/restart] [server/root@host] [remotePort] [localPort] "
    echo "Usage $0 [start/stop/restart] "
    exit 1
fi

server=${1:-shop}
localPort=${2:-8080}
remotePort=${3:-8080}

echo $server  $remotePort $localPort
exit 1

red_msg() {
    echo -e "\033[31m\033[01m $1 \033[0m"
}
function start () {
    ssh -i ~/.ssh/id_rsa -vvv  -C -f -N -g -R 0.0.0.0:${remotePort}:127.0.0.1:${localPort} ${server}
    sleep 0.5
    red_msg "Remote connections from 127.0.0.1:${localPort} forwarded to local address 127.0.0.1:${remotePort}"
    red_msg "please check!!!"
}

function stop() {
    pids=$(ps aux | grep "${localPort}:127.0.0.1:${remotePort}" | grep -v 'grep' | awk '{print $2}')
    for pid in $pids
    do
            echo "kill ${pid}"
            kill ${pid}
            echo "return = $?"
    done
}

if [ "$1"x = "start"x ]; then
	start
elif [ "$1" = "stop" ]; then
	stop
elif [ "$1" = "restart" ]; then
	stop
	start
fi 

exit 0

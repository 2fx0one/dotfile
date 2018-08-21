#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage $0 [start/stop/restart]"
    exit 1
fi

function start () {
    ssh -i ~/.ssh/qipai/id_rsa -vvv  -C -f -N -g -R 127.0.0.1:8894:127.0.0.1:8895 root@122.152.202.61 
}

function stop() {
    pids=$(ps aux | grep '8894:127.0.0.1:8895' | grep -v 'grep' | awk '{print $2}')
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

#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 [st/pull/add]"
    exit -1
fi
SYNC_DIR=(
    '/Volumes/data/GitProject/springboot-learning'
    '/Volumes/data/GitProject/mp-shop'
    '/Volumes/data/GitProject/vue-learning'
)

for DIR in ${SYNC_DIR[@]}
do
    echo "cd $DIR"
    if [[ "$1"x == 'pull'x ]]; then
        (cd ${DIR} && git pull) &
    elif [[ "$1"x == 'st'x ]]; then
        (cd ${DIR} && git status) &
    elif [[ "$1"x == 'add'x ]]; then
        (cd ${DIR} && git pull &&  git add . && git commit -m "update" && git push) &
    fi
done

wait
echo "all done"
exit 0



